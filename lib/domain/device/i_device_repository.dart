import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/device_helper/device_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_blinds_device/generic_blinds_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_boiler_device/generic_boiler_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_dimmable_light_device/generic_dimmable_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_dimmable_light_device/generic_dimmable_light_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_rgbw_light_device/generic_rgbw_light_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_computer_device/generic_smart_computer_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_plug_device/generic_smart_plug_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_tv/generic_smart_tv_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_requests_routing.dart';
import 'package:cybear_jinni/utils.dart';
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

part 'package:cybear_jinni/infrastructure/devices/device/device_repository.dart';

abstract interface class IDeviceRepository {
  static IDeviceRepository? _instance;

  static IDeviceRepository get instance {
    return _instance ??= _DeviceRepository();
  }

  void addOrUpdateDevice(DeviceEntityAbstract deviceEntity);

  void addOrUpdateDeviceAndStateToWaiting(DeviceEntityAbstract deviceEntity);

  Future<void> initiateHubConnection();

  Future<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> getAllDevices();

  Stream<Either<dynamic, KtList<dynamic>>> watchAll();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchAllDevices();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchLights();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchBlinds();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchBoilers();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchSmartTv();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchSwitches();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchSmartPlugs();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchSmartComputers();

  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>> watchPrinters();

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
    DeviceEntityAbstract deviceEntity,
  );

  BehaviorSubject<KtList<dynamic>> allResponseFromTheHubStreamController =
      BehaviorSubject<KtList<dynamic>>();

  BehaviorSubject<KtList<RoomEntity>> roomsResponseFromTheHubStreamController =
      BehaviorSubject<KtList<RoomEntity>>();

  BehaviorSubject<KtList<DeviceEntityAbstract>>
      devicesResponseFromTheHubStreamController =
      BehaviorSubject<KtList<DeviceEntityAbstract>>();
}
