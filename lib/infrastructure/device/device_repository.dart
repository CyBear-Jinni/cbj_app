import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/infrastructure/core/firestore_helpers.dart';
import 'package:cybear_jinni/infrastructure/device/device_dtos.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IDeviceRepository)
class DeviceRepository implements IDeviceRepository {
  DeviceRepository(this._firestore);

  final FirebaseFirestore _firestore;

  // final DeviceRemoteService _deviceRemoteService;
  // final DeviceLocalService _deviceLocalService;

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchAll() async* {
    final devicesDoc = await _firestore.currentHomeDocument();

    yield* devicesDoc.devicesCollecttion
        .snapshots()
        .map(
          (snapshot) => right<DevicesFailure, KtList<DeviceEntity>>(
            snapshot.docs
                .map((doc) => DeviceDtos.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }

  @override
  Future<Either<DevicesFailure, Unit>> create(DeviceEntity deviceEntity) async {
    try {
      String deviceModelString = 'No Model found';
      final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      if (Platform.isAndroid) {
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        print(androidInfo.model);
        deviceModelString = androidInfo.model;
      } else if (Platform.isIOS) {
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        print(iosInfo.utsname.machine);
        deviceModelString = iosInfo.model;
      }

      final UserEntity currentUserEntity =
          (await getIt<IUserRepository>().getCurrentUser())
              .getOrElse(() => throw 'Cant get current user');
      final String currentUserId = currentUserEntity.id.getOrCrash();

      final DeviceEntity deviceEntityTemp = deviceEntity.copyWith(
          stateMassage: DeviceStateMassage('Setting up device'),
          senderDeviceOs: DeviceSenderDeviceOs(Platform.operatingSystem),
          senderDeviceModel: DeviceSenderDeviceModel(deviceModelString),
          senderId: DeviceSenderId.fromUniqueString(currentUserId));

      final devicesDoc = await _firestore.currentHomeDocument();
      final deviceDtos = DeviceDtos.fromDomain(deviceEntityTemp);

      await devicesDoc.devicesCollecttion
          .doc(deviceDtos.id)
          .set(deviceDtos.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DevicesFailure, Unit>> update(DeviceEntity deviceEntity) async {
    try {
      final devicesDoc = await _firestore.currentHomeDocument();
      final deviceDtos = DeviceDtos.fromDomain(deviceEntity);

      await devicesDoc.devicesCollecttion
          .doc(deviceDtos.id)
          .update(deviceDtos.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DevicesFailure, Unit>> delete(DeviceEntity deviceEntity) async {
    try {
      final devicesDoc = await _firestore.currentHomeDocument();
      final deviceDtos = DeviceDtos.fromDomain(deviceEntity);

      await devicesDoc.devicesCollecttion.doc(deviceDtos.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
  }
}
