import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:cybear_jinni/domain/add_user_to_home/i_add_user_to_home_repository.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/auth/user.dart';
import 'package:cybear_jinni/domain/auth/value_objects.dart';
import 'package:cybear_jinni/domain/create_home/create_home_entity.dart';
import 'package:cybear_jinni/domain/create_home/create_home_failure.dart';
import 'package:cybear_jinni/domain/create_home/create_home_value_objects.dart';
import 'package:cybear_jinni/domain/create_home/i_create_home_repository.dart';
import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:cybear_jinni/domain/home_user/home_user_value_objects.dart';
import 'package:cybear_jinni/domain/local_db/i_local_db_repository.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_value_objects.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_entity.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_value_objects.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_errors.dart';
import 'package:cybear_jinni/domain/user/user_failures.dart';
import 'package:cybear_jinni/infrastructure/create_home/create_home_dtos.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICreateHomeRepository)
class CreateHomeRepository implements ICreateHomeRepository {
  final String smartHomesPath = 'SmartHomes';
  final String usersInHomePath = 'Users';

  @override
  Future<Either<CreateHomeFailure, Unit>> createNewHome(
    CreateHomeEntity? createHomeEntity,
  ) async {
    try {
      if (createHomeEntity!.homeDevicesUserEmail!.getOrCrash().isEmpty) {
        return left(const CreateHomeFailure.devicesUserEmailIsInvalid());
      }

      CreateHomeEntity createHomeEntityWithId =
          createHomeEntity.copyWith(id: HomeUniqueId());

      final UserEntity userEntity =
          (await getIt<IUserRepository>().getCurrentUser()).getOrElse(
        () => throw UserUnexpectedValueError(const UserFailures.unexpected()),
      );

      // Create user for devices
      final registerDeviceUser =
          await getIt<IAuthFacade>().registerWithEmailAndPasswordReturnUserId(
        emailAddress: EmailAddress(
          createHomeEntityWithId.homeDevicesUserEmail!.getOrCrash(),
        ),
        password: Password(
          createHomeEntityWithId.homeDevicesUserPassword!.getOrCrash(),
        ),
      );
      final MUser deviceUserId = registerDeviceUser.getOrElse(
        () => throw UserUnexpectedValueError(const UserFailures.unexpected()),
      );
      createHomeEntityWithId = createHomeEntityWithId.copyWith(
        homeDevicesUserId: HomeDevicesUserId.fromUniqueString(
          deviceUserId.id.getOrCrash(),
        ),
      );

      // create home with the current user
      await getIt<ILocalDbRepository2>()
          .setHomeId(createHomeEntityWithId.id.getOrCrash());

      final creatingHomeWithUser = await addUserToHome(userEntity);

      creatingHomeWithUser.getOrElse(
        () => throw UserUnexpectedValueError(const UserFailures.unexpected()),
      );

      // Add the home its info like name

      final addHomeInfoRes = await addHomeInfo(createHomeEntityWithId);

      addHomeInfoRes.getOrElse(
        () => throw UserUnexpectedValueError(const UserFailures.unexpected()),
      );

      // Add the devices user info to home
      final saveDeviceAccountToHome =
          await addDeviceUserToHome(createHomeEntityWithId);

      saveDeviceAccountToHome.getOrElse(
        () => throw UserUnexpectedValueError(const UserFailures.unexpected()),
      );

      // Add home to user homes list
      final addingHomeToUserHomesList =
          await addHomeToUserHomesList(userEntity, createHomeEntityWithId);

      addingHomeToUserHomesList.getOrElse(
        () => throw UserUnexpectedValueError(const UserFailures.unexpected()),
      );

      return right(unit);
    } catch (e) {
      return left(CreateHomeFailure.unexpected(failedValue: e.toString()));
    }
  }

  Future<Either<CreateHomeFailure, Unit>> addHomeToUserHomesList(
    UserEntity userEntity,
    CreateHomeEntity createHomeEntity,
  ) async {
    try {
      final String homeId = createHomeEntity.id.getOrCrash();
      final String homeName = createHomeEntity.name.getOrCrash();
      final AllHomesOfUserEntity allHomesOfUserEntity = AllHomesOfUserEntity(
        id: AllHomesOfUserUniqueId.fromUniqueString(homeId),
        name: AllHomesOfUserName(homeName),
      );
      final addHomeToUserHomesList = await getIt<IUserRepository>()
          .addHome(userEntity, allHomesOfUserEntity);

      addHomeToUserHomesList.getOrElse(
        () => throw UserUnexpectedValueError(const UserFailures.unexpected()),
      );

      return right(unit);
    } catch (e) {
      return left(
        const CreateHomeFailure.unexpected(
          failedValue: 'Failure adding home to user homes list',
        ),
      );
    }
  }

  @override
  Future<Either<CreateHomeFailure, Unit>> addDeviceUserToHome(
    CreateHomeEntity createHomeEntity,
  ) async {
    try {
      final CreateHomeDtos deviceHomeUserDtos =
          CreateHomeDtos.fromDomain(createHomeEntity);

      // await homeDoc.devicesUsersCollecttion
      //     .doc('default')
      //     .set(deviceHomeUserDtos.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CreateHomeFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(CreateHomeFailure.unexpected(failedValue: e.message));
      }
    }
  }

  @override
  Future<Either<CreateHomeFailure, UserEntity>> getDeviceUserFromHome() async {
    try {
      // return right(userEntity);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CreateHomeFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(CreateHomeFailure.unexpected(failedValue: e.message));
      }
    } catch (error) {
      return left(CreateHomeFailure.unexpected(failedValue: error.toString()));
    }
    return left(
      const CreateHomeFailure.unexpected(failedValue: 'Not implemented yet'),
    );
  }

  Future<Either<CreateHomeFailure, Unit>> addHomeInfo(
    CreateHomeEntity createHomeEntity,
  ) async {
    try {
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CreateHomeFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(CreateHomeFailure.unexpected(failedValue: e.message));
      }
    }
  }

  @override
  Future<Either<CreateHomeFailure, ManageNetworkEntity>> getFirstWifi() async {
    try {
      return right(
        ManageNetworkEntity(
          name: ManageWiFiName('CyBear Jinni'),
          pass: ManageWiFiPass('CyBear Jinni'),
        ),
      );
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CreateHomeFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(CreateHomeFailure.unexpected(failedValue: e.message));
      }
    }
    return left(
      const CreateHomeFailure.unexpected(failedValue: 'Not implemented yet'),
    );
  }

  @override
  Future<Either<CreateHomeFailure, Unit>> addUserToHome(
    UserEntity userEntity,
  ) async {
    try {
      final String currentUserUid = userEntity.id!.getOrCrash()!;
      final String currentUserEmail = userEntity.email!.getOrCrash();
      final String currentUserName = userEntity.name!.getOrCrash();

      final HomeUserEntity homeUserEntity = HomeUserEntity(
        id: HomeUserUniqueId.fromUniqueString(currentUserUid),
        email: HomeUserEmail(currentUserEmail),
        name: HomeUserName(currentUserName),
        permission: HomeUserPermission('admin'),
      );

      final Either<AddUserToHomeFailures, Unit> createHome =
          await getIt<IAddUserToHomeRepository>().create(homeUserEntity);
      createHome.getOrElse(
        () => throw UserUnexpectedValueError(const UserFailures.unexpected()),
      );
      return right(unit);
    } catch (e) {
      return left(
        const CreateHomeFailure.unexpected(
          failedValue: 'Failure addUserToHome',
        ),
      );
    }
  }
}
