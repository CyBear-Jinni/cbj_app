import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/kt.dart';

abstract class IDeviceRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchAll();

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchLights();

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchBlinds();

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchUncompleted();

  Future<Either<DevicesFailure, Unit>> create(DeviceEntity deviceEntity);

  Future<Either<DevicesFailure, Unit>> update({
    @required DeviceEntity deviceEntity,
    String forceUpdateLocation,
  });

  Future<Either<DevicesFailure, Unit>> delete(DeviceEntity deviceEntity);
}
