import 'dart:convert';

import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/room/i_room_repository.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/scene/i_scene_cbj_repository.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_blinds_device/generic_blinds_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_boiler_device/generic_boiler_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_empty_device/generic_empty_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_light_device/generic_light_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_ping_device/generic_ping_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_rgbw_light_device/generic_rgbw_light_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_smart_plug_device/generic_smart_plug_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_smart_tv_device/generic_smart_tv_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_switch_device/generic_switch_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:cybear_jinni/infrastructure/room/room_entity_dtos.dart';
import 'package:cybear_jinni/infrastructure/scenes/scene_cbj_dtos.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:grpc/grpc.dart';

class HubRequestRouting {
  static Future<void> navigateRequest() async {
    HubRequestsToApp.hubRequestsStream
        .listen((RequestsAndStatusFromHub requestsAndStatusFromHub) {
      if (requestsAndStatusFromHub.sendingType == SendingType.deviceType) {
        navigateDeviceRequest(requestsAndStatusFromHub.allRemoteCommands);
      } else if (requestsAndStatusFromHub.sendingType == SendingType.roomType) {
        navigateRoomRequest(requestsAndStatusFromHub.allRemoteCommands);
      } else if (requestsAndStatusFromHub.sendingType ==
          SendingType.sceneType) {
        navigateRoomRequest(requestsAndStatusFromHub.allRemoteCommands);
      } else {
        logger.i(
          'Got from Hub unsupported massage type: '
          '${requestsAndStatusFromHub.sendingType}',
        );
      }
    }).onError((error) {
      if (error is GrpcError && error.code == 1) {
        logger.v('Hub have disconnected');
      } else {
        logger.e('Hub stream error: $error');
      }
    });
  }

  static Future<void> navigateRoomRequest(
    String allRemoteCommands,
  ) async {
    final Map<String, dynamic> requestAsJson =
        jsonDecode(allRemoteCommands) as Map<String, dynamic>;

    final RoomEntityDtos roomEntityDtos = RoomEntityDtos(
      uniqueId: requestAsJson['uniqueId'] as String,
      defaultName: requestAsJson['defaultName'] as String,
      roomTypes: List<String>.from(requestAsJson['roomTypes'] as List<dynamic>),
      roomDevicesId:
          List<String>.from(requestAsJson['roomDevicesId'] as List<dynamic>),
      roomScenesId:
          List<String>.from(requestAsJson['roomScenesId'] as List<dynamic>),
      roomMostUsedBy:
          List<String>.from(requestAsJson['roomMostUsedBy'] as List<dynamic>),
      roomPermissions:
          List<String>.from(requestAsJson['roomPermissions'] as List<dynamic>),
    );

    final RoomEntity roomEntity = roomEntityDtos.toDomain();
    getIt<IRoomRepository>().addOrUpdateRoom(roomEntity);
  }

  static Future<void> navigateDeviceRequest(
    String allRemoteCommands,
  ) async {
    final Map<String, dynamic> requestAsJson =
        jsonDecode(allRemoteCommands) as Map<String, dynamic>;
    final String? deviceTypeAsString = requestAsJson['deviceTypes'] as String?;

    final String? deviceStateAsString =
        requestAsJson['deviceStateGRPC'] as String?;
    if (deviceTypeAsString == null || deviceStateAsString == null) {
      return;
    }

    ///TODO: add request type login support

    final DeviceTypes? deviceType = EnumHelper.stringToDt(deviceTypeAsString);

    final DeviceStateGRPC? deviceStateGRPC =
        EnumHelper.stringToDeviceState(deviceStateAsString);

    if (deviceType == null || deviceStateGRPC == null) {
      return;
    }

    late DeviceEntityAbstract deviceEntity;

    switch (deviceType) {
      case DeviceTypes.light:
        deviceEntity =
            GenericLightDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Light device type');
        break;
      case DeviceTypes.rgbwLights:
        deviceEntity =
            GenericRgbwLightDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding rgbW light device type');
        break;
      case DeviceTypes.blinds:
        deviceEntity =
            GenericBlindsDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Blinds device type');
        break;
      case DeviceTypes.boiler:
        deviceEntity =
            GenericBoilerDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Boiler device type');
        break;
      case DeviceTypes.smartTV:
        deviceEntity =
            GenericSmartTvDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Smart TV device type');
        break;
      case DeviceTypes.switch_:
        deviceEntity =
            GenericSwitchDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Switch device type');
        break;
      case DeviceTypes.smartPlug:
        deviceEntity =
            GenericSmartPlugDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Smart Plug device type');
        break;
      default:
        if (deviceStateGRPC == DeviceStateGRPC.pingNow) {
          deviceEntity =
              GenericPingDeviceDtos.fromJson(requestAsJson).toDomain();
          logger.v('Got Ping request');
          return;
        } else {
          deviceEntity =
              GenericEmptyDeviceDtos.fromJson(requestAsJson).toDomain();
          logger.w('Device type is $deviceStateGRPC is not supported');
        }
        break;
    }

    getIt<IDeviceRepository>().addOrUpdateDevice(deviceEntity);
  }

  static Future<void> navigateSceneRequest(
    String allRemoteCommands,
  ) async {
    final Map<String, dynamic> requestAsJson =
        jsonDecode(allRemoteCommands) as Map<String, dynamic>;
    final SceneCbjDtos sceneCbjDtos = SceneCbjDtos.fromJson(requestAsJson);

    getIt<ISceneCbjRepository>()
        .addOrUpdateNewSceneInApp(sceneCbjDtos.toDomain());
  }
}
