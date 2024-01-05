import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/device/devices_failures.dart';
import 'package:cybearjinni/infrastructure/core/logger.dart';
import 'package:cybearjinni/infrastructure/hub_client/hub_requests_routing.dart';
import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/kt.dart';
import 'package:multicast_dns/multicast_dns.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

part 'package:cybearjinni/infrastructure/device_repository.dart';

@Deprecated('Old architecture. Replaced by EntitiesService')
abstract interface class IDeviceRepository {
  static IDeviceRepository? _instance;

  static IDeviceRepository get instance {
    return _instance ??= _DeviceRepository();
  }

  void addOrUpdateDevice(DeviceEntityBase deviceEntity);

  void addOrUpdateDeviceAndStateToWaiting(DeviceEntityBase deviceEntity);

  Future<void> initiateHubConnection();

  Future<Either<DevicesFailure, KtList<DeviceEntityBase?>>> getAllEntites();

  Stream<Either<dynamic, KtList<dynamic>>> watchAll();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchAllDevices();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchLights();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchBlinds();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchBoilers();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchSmartTv();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchSwitches();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchSmartPlugs();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>>
      watchSmartComputers();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchPrinters();

  Stream<Either<DevicesFailure, KtList<DeviceEntityBase?>>> watchUncompleted();

  Future<Either<DevicesFailure, Unit>> create(
    DeviceEntityBase deviceEntity,
  );

  /// Update document in the database in the following fields
  Future<Either<DevicesFailure, Unit>> updateDatabase({
    required Map<String, dynamic> documentPath,
    required Map<String, dynamic> fieldsToUpdate,
  });

  Future<Either<DevicesFailure, Unit>> updateWithDeviceEntity({
    required DeviceEntityBase deviceEntity,
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

  Future<Either<DevicesFailure, Unit>> moveUpStateDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> stopStateDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> moveDownStateDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> suspendDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> shutdownDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> openUrlOnDevices({
    required List<String>? devicesId,
    required String url,
  });

  Future<Either<DevicesFailure, Unit>> closeStateDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> pauseStateDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> playStateDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> skipVideoDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> changeVolumeDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> queuePrevStateDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> queueNextStateDevices({
    required List<String>? devicesId,
  });

  Future<Either<DevicesFailure, Unit>> delete(
    DeviceEntityBase deviceEntity,
  );

  BehaviorSubject<KtList<dynamic>> allResponseFromTheHubStreamController =
      BehaviorSubject<KtList<dynamic>>();

  BehaviorSubject<KtList<AreaEntity>> areasResponseFromTheHubStreamController =
      BehaviorSubject<KtList<AreaEntity>>();

  BehaviorSubject<KtList<DeviceEntityBase>>
      devicesResponseFromTheHubStreamController =
      BehaviorSubject<KtList<DeviceEntityBase>>();
}
