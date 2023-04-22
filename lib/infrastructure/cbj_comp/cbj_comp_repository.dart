import 'dart:async';

import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/i_cbj_comp_repository.dart';
import 'package:cybear_jinni/infrastructure/cbj_app_server/cbj_app_server_d.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICBJCompRepository)
class CBJCompRepository implements ICBJCompRepository {
  @override
  Future<Either<CBJCompFailure, Unit>> shutdownServer() async {
    await CreateTheCBJAppServer.shutdownServer();
    return right(unit);
  }

  @override
  Future<Either<CBJCompFailure, Unit>> firstSetup(
    CBJCompEntity cBJCompEntity,
  ) async {
    try {
      // final CompHubInfo compInfo = await compEntityToCompInfo(cBJCompEntity);
      //
      // final UserEntity deviceUser =
      //     (await getIt<ICreateHomeRepository>().getDeviceUserFromHome())
      //         .getOrElse(() => throw "Device user can't be found");
      //
      // final String fireBaseProjectId = ConstantCredentials.fireBaseProjectId;
      // final String fireBaseApiKey = ConstantCredentials.fireBaseApiKey;
      // final String userEmail = deviceUser.email!.getOrCrash();
      // final String userPassword = deviceUser.pass!.getOrCrash();
      // final String homeId = (await getIt<IAuthFacade>().getCurrentHome())
      //     .getOrElse(() => throw MissingCurrentHomeError())
      //     .id
      //     .getOrCrash()!;
      //
      // final FirebaseAccountInformation firebaseAccountInformation =
      //     FirebaseAccountInformation()
      //       ..fireBaseProjectId = fireBaseProjectId
      //       ..fireBaseApiKey = fireBaseApiKey
      //       ..userEmail = userEmail
      //       ..userPassword = userPassword
      //       ..homeId = homeId;
      //
      // final FirstSetupMessage firstSetupMessage = FirstSetupMessage(
      //     compInfo: compInfo,
      //     firebaseAccountInformation: firebaseAccountInformation);
      //
      // final CommendStatus commendStatus = await SmartClient.compFirstSetup(
      //     cBJCompEntity.lastKnownIp!.getOrCrash(), firstSetupMessage);
      //
      // if (commendStatus.success) {
      //   return right(unit);
      // }
      return left(const CBJCompFailure.unexpected());
    } catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
  }

  @override
  Future<Either<CBJCompFailure, Unit>> create(CBJCompEntity deviceEntity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<CBJCompFailure, Unit>> devicesList(CBJCompEntity deviceEntity) {
    // TODO: implement devicesList
    throw UnimplementedError();
  }

  @override
  Future<Either<CBJCompFailure, Unit>> updateCompInfo(
    CBJCompEntity compEntity,
  ) async {
    try {
      // final CompHubInfo compInfo = await compEntityToCompInfo(compEntity);
      //
      // final CommendStatus commendStatus = await SmartClient.setCompInfo(
      //     compEntity.lastKnownIp!.getOrCrash(), compInfo);
      //
      // if (commendStatus.success) {
      //   return right(unit);
      // }
      return left(const CBJCompFailure.unexpected());
    } catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
  }

  @override
  Stream<Either<CBJCompFailure, String>> getConnectedComputersIP() async* {
    try {
      final CreateTheCBJAppServer createTheCBJAppServer =
          CreateTheCBJAppServer();

      final StreamController<CompInfoSB> compInfoSBSteam =
          StreamController<CompInfoSB>();

      createTheCBJAppServer.createServer(compInfoSBSteam);

      yield* compInfoSBSteam.stream.map((CompInfoSB compInfoSB) {
        return right(compInfoSB.compIP);
      });
    } catch (e) {
      yield left(const CBJCompFailure.unexpected());
    }
    yield left(const CBJCompFailure.unexpected());
  }

  @override
  Future<Either<CBJCompFailure, CBJCompEntity>> getInformationFromDeviceByIp(
    String compIp,
  ) async {
    try {
      // final CompHubInfo compInfo = await SmartClient.getCompInfo(compIp);
      //
      // final CompSpecs compSpecs = compInfo.compSpecs;
      //
      // final KtList<GenericLightDE> deviceEntityList =
      //     compDevicesToDevicesList(compInfo, compIp);
      //
      // final CBJCompEntity cbjCompEntity = CBJCompEntity(
      //   id: CBJCompUniqueId.fromUniqueString(compSpecs.compId),
      //   roomId: CBJCompRoomId(),
      //   compUuid: CBJCompUuid(compInfo.compSpecs.compUuid),
      //   lastKnownIp: CBJCompLastKnownIp(compIp),
      //   cBJCompDevices: CBJCompDevices(deviceEntityList),
      // );
      //
      // return right(cbjCompEntity);
    } catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
    return left(const CBJCompFailure.unexpected());
  }

  // Future<CompHubInfo> compEntityToCompInfo(CBJCompEntity compEntity) async {
  //   String deviceModelString = 'No Model found';
  //   final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //   if (Platform.isAndroid) {
  //     final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //     logger.i(androidInfo.model);
  //     deviceModelString = androidInfo.model!;
  //   } else if (Platform.isIOS) {
  //     final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  //     logger.i(iosInfo.utsname.machine);
  //     deviceModelString = iosInfo.model!;
  //   }
  //
  //   final CompHubSpecs compSpecs = CompHubSpecs(
  //     compUuid: compEntity.compUuid!.getOrCrash(),
  //     compId: compEntity.id.getOrCrash(),
  //   );
  //
  //   final List<SmartDeviceInfo> smartDevicesList = [];
  //
  //   final EntityActions deviceAction = EntityActions.actionNotSupported;
  //   final EntityStateGRPC entityStateGRPC = EntityStateGRPC.waitingInComp;
  //
  //   compEntity.cBJCompDevices!.getOrCrash().forEach((GenericLightDE element) {
  //     final DeviceTypesActions deviceTypesActions = DeviceTypesActions(
  //       deviceAction: deviceAction,
  //       entityStateGRPC: entityStateGRPC,
  //     );
  //
  //     final SmartDeviceInfo smartDeviceInfo = SmartDeviceInfo(
  //       compSpecs: compSpecs,
  //       deviceTypesActions: deviceTypesActions,
  //       cbjEntityName: element.cbjEntityName.getOrCrash(),
  //       senderId: element.senderId.getOrCrash(),
  //       senderDeviceModel: deviceModelString,
  //       senderDeviceOs: Platform.operatingSystem,
  //       state: element.entityStateGRPC.getOrCrash(),
  //       stateMassage: 'Setting up device',
  //       roomId: element.roomId.getOrCrash(),
  //       id: element.uniqueId.getOrCrash(),
  //       serverTimeStamp: DateTime.now().toString(),
  //     );
//     smartDevicesList.add(smartDeviceInfo);
//   });
//
//   final CompHubInfo compInfo = CompHubInfo(
//     compSpecs: compSpecs,
//   );
//   return compInfo;
// }

// KtList<GenericLightDE> compDevicesToDevicesList(
//   CompHubInfo compInfo,
//   String compIp,
// ) {
//   final List<GenericLightDE> deviceEntityList = [];
//
//   for (final SmartDeviceInfo smartDeviceInfo in compInfo.smartDevicesInComp) {
//     final GenericLightDE deviceEntity = GenericLightDE(
//       uniqueId: CoreUniqueId.fromUniqueString(smartDeviceInfo.id),
//       cbjEntityName: CbjEntityName(smartDeviceInfo.cbjEntityName),
//       roomId: CoreUniqueId.fromUniqueString(smartDeviceInfo.roomId),
//       roomName: DeviceRoomName('Missing area name'),
//       entityStateGRPC: EntityState(
//         smartDeviceInfo.deviceTypesActions.entityStateGRPC.toString(),
//       ),
//       stateMassage: DeviceStateMassage(smartDeviceInfo.stateMassage),
//       senderDeviceOs: DeviceSenderDeviceOs(smartDeviceInfo.senderDeviceOs),
//       senderDeviceModel:
//           DeviceSenderDeviceModel(smartDeviceInfo.senderDeviceModel),
//       senderId: DeviceSenderId.fromUniqueString(smartDeviceInfo.senderId),
//       deviceVendor: DeviceVendor(
//         VendorsAndServices.vendorsAndServicesNotSupported.toString(),
//       ),
//       lightSwitchState: GenericLightSwitchState(
//         smartDeviceInfo.deviceTypesActions.deviceAction.toString(),
//       ),
//       compUuid: DeviceCompUuid(smartDeviceInfo.compSpecs.compUuid),
//     );
//     deviceEntityList.add(deviceEntity);
//   }
//   return deviceEntityList.toImmutableList();
// }
}
