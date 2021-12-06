import 'dart:async';

import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

abstract class IDeviceRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  void addOrUpdateRoom(RoomEntity roomEntity);

  void addOrUpdateDevice(DeviceEntityAbstract deviceEntity);

  void addOrUpdateDeviceAndStateToWaiting(DeviceEntityAbstract deviceEntity);

  Future<void> initiateHubConnection();

  Future<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> getAllDevices();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchAll();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchLights();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchBlinds();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchBoilers();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchSmartTv();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchSwitches();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchUncompleted();

  Future<Either<DevicesFailure, Unit>> create(
    DeviceEntityAbstract deviceEntity,
  );

  /// Update document in the database in the following fields
  Future<Either<DevicesFailure, Unit>> updateDatabase({
    required Map<String, dynamic> documentPath,
    required Map<String, dynamic> fieldsToUpdate,
  });

  Future<Either<DevicesFailure, Unit>> updateWithDeviceEntity({
    required DeviceEntityAbstract deviceEntity,
  });

  Future<Either<DevicesFailure, Unit>> turnOnDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> turnOffDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> changeColorTemperatureDevices({
    required List<String>? devicesId,
    required int colorTemperatureToChange,
  });

  Future<Either<DevicesFailure, Unit>> changeHsvColorDevices({
    required List<String>? devicesId,
    required HSVColor hsvColorToChange,
  });

  Future<Either<DevicesFailure, Unit>> changeBrightnessDevices({
    required List<String>? devicesId,
    required int brightnessToChange,
  });

  Future<Either<DevicesFailure, Unit>> moveUpBlinds({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> stopBlinds({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> moveDownBlinds({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> delete(
    DeviceEntityAbstract deviceEntity,
  );

  BehaviorSubject<KtList<dynamic>> appRequestsForTheHubStreamController =
      BehaviorSubject<KtList<dynamic>>();
}
