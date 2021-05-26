import 'package:cloud_firestore/cloud_firestore.dart';
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

  Future<Either<DevicesFailure, KtList<DeviceEntity>>> getAllDevices();

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchAll();

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchLights();

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchBlinds();

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchBoilers();

  Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchUncompleted();

  Future<Either<DevicesFailure, Unit>> create(DeviceEntity deviceEntity);

  /// Update document in the database in the following fields
  Future<Either<DevicesFailure, Unit>> updateDatabase({
    @required DocumentReference documentPath,
    @required Map<String, dynamic> fieldsToUpdate,
    String forceUpdateLocation,
  });

  Future<Either<DevicesFailure, Unit>> updateWithDeviceEntity({
    @required DeviceEntity deviceEntity,
    String forceUpdateLocation,
  });

  Future<Either<DevicesFailure, Unit>> turnOnDevices({
    @required List<String> devicesId,
    String forceUpdateLocation,
  });

  Future<Either<DevicesFailure, Unit>> turnOffDevices({
    @required List<String> devicesId,
    String forceUpdateLocation,
  });

  Future<Either<DevicesFailure, Unit>> moveUpBlinds({
    @required List<String> devicesId,
    String forceUpdateLocation,
  });

  Future<Either<DevicesFailure, Unit>> stopBlinds({
    @required List<String> devicesId,
    String forceUpdateLocation,
  });

  Future<Either<DevicesFailure, Unit>> moveDownBlinds({
    @required List<String> devicesId,
    String forceUpdateLocation,
  });

  Future<Either<DevicesFailure, Unit>> delete(DeviceEntity deviceEntity);
}
