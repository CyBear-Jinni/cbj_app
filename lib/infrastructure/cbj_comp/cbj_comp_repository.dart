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
import 'package:grpc/grpc.dart';
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

      final StreamController<SmartDeviceInfo> computersIpStream =
          StreamController<SmartDeviceInfo>();

      createTheCBJAppServer.createServer(computersIpStream);

      yield* computersIpStream.stream.map((SmartDeviceInfo deviceInfo) {
        return right(deviceInfo.smartDeviceIP);
      });
    } catch (e) {
      yield left(const CBJCompFailure.unexpected());
    }
  }

  @override
  Future<Either<CBJCompFailure, CBJCompEntity>> getInformationFromDeviceByIp(
      String compIp) async {
    try {
      final StreamController<SmartDeviceInfo> smartDeviceStream =
          StreamController<SmartDeviceInfo>();

      final ResponseStream<SmartDevice> createTheCBJAppServer =
          await SmartClient.getAllDevices(compIp);

      final Either<CBJCompFailure, CBJCompEntity> cbjDevicesList =
          fromRespStreamToList(createTheCBJAppServer);

      return cbjDevicesList.fold(
        (f) {
          return left(const CBJCompFailure.unexpected());
        },
        (r) => right(r),
      );
    } catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
  }

  Either<CBJCompFailure, CBJCompEntity> fromRespStreamToList(
      ResponseStream<SmartDevice> devicesStream) {
    CBJCompEntity cbjCompEntity;
    DeviceEntity deviceEntity;
    final List<DeviceEntity> deviceEntityList = [];

    try {
      cbjCompEntity = CBJCompEntity(
        id: CBJCompUniqueId(),
        roomId: CBJCompRoomId(),
      );

      devicesStream.forEach((SmartDevice d) {
        deviceEntity = DeviceEntity.empty().copyWith(
          id: DeviceUniqueId.fromUniqueString(d.id),
          defaultName: DeviceDefaultName(d.defaultName),
          senderDeviceModel: DeviceSenderDeviceModel(d.senderDeviceModel),
        );

        deviceEntityList.add(deviceEntity);
      });

      final CBJCompDevices cBJCompDevices =
          CBJCompDevices(deviceEntityList?.toImmutableList());

      cbjCompEntity = cbjCompEntity.copyWith(cBJCompDevices: cBJCompDevices);
      return right(cbjCompEntity);
    } catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
  }
}
