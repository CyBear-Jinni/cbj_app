import 'dart:async';

import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:cybear_jinni/domain/cbj_comp/i_cbj_comp_repository.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/cbj_app_server_d.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pb.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/smart_client.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: ICBJCompRepository)
class CBJCompRepository implements ICBJCompRepository {
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
  Future<Either<CBJCompFailure, Unit>> update(CBJCompEntity deviceEntity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<CBJCompFailure, String>> getConnectedComputersIP() async* {
    try {
      final CreateTheCBJAppServer createTheCBJAppServer =
          CreateTheCBJAppServer();

      StreamController<CompInfoSB> compInfoSBSteam =
          StreamController<CompInfoSB>();

      createTheCBJAppServer.createServer(compInfoSBSteam);

      yield* compInfoSBSteam.stream.map((CompInfoSB compInfoSB) {
        return right(compInfoSB.compIP);
      });
    } catch (e) {
      yield left(const CBJCompFailure.unexpected());
    }
  }

  @override
  Future<Either<CBJCompFailure, CBJCompEntity>> getInformationFromDeviceByIp(
      String compIp) async {
    try {
      final CompInfo compInfo = await SmartClient.getCompInfo(compIp);

      final CompSpecs compSpecs = compInfo.compSpecs;

      KtList<DeviceEntity> deviceEntityList =
          compDevicesToDevicesList(compInfo);

      final CBJCompEntity cbjCompEntity = CBJCompEntity(
        id: CBJCompUniqueId.fromUniqueString(compSpecs.compId),
        roomId: CBJCompRoomId(),
        compUuid: CBJCompUuid(compInfo.compSpecs.compUuid),
        cBJCompDevices: CBJCompDevices(deviceEntityList),
      );

      return right(cbjCompEntity);
    } catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
  }

  KtList<DeviceEntity> compDevicesToDevicesList(CompInfo compInfo) {
    List<DeviceEntity> deviceEntityList = [];

    for (SmartDeviceInfo smartDeviceInfo in compInfo.smartDevicesInComp) {
      DeviceEntity deviceEntity = DeviceEntity(
          id: DeviceUniqueId.fromUniqueString(smartDeviceInfo.id),
          defaultName: DeviceDefaultName(smartDeviceInfo.defaultName),
          roomId: DeviceUniqueId.fromUniqueString(smartDeviceInfo.roomId),
          state: DeviceState(smartDeviceInfo.state),
          stateMassage: DeviceStateMassage(smartDeviceInfo.stateMassage),
          senderDeviceOs: DeviceSenderDeviceOs(smartDeviceInfo.senderDeviceOs),
          senderDeviceModel:
              DeviceSenderDeviceModel(smartDeviceInfo.senderDeviceModel),
          senderId: DeviceSenderId.fromUniqueString(smartDeviceInfo.senderId),
          action: DeviceAction(
              smartDeviceInfo.deviceTypesActions.deviceAction.toString()),
          type: DeviceType(
              smartDeviceInfo.deviceTypesActions.deviceType.toString()),
          compUuid: DeviceCompUuid(smartDeviceInfo.compSpecs.compUuid));
      deviceEntityList.add(deviceEntity);
    }
    return deviceEntityList.toImmutableList();
  }
}
