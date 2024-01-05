import 'dart:async';
import 'dart:convert';

import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cybearjinni/domain/device/i_device_repository.dart';
import 'package:cybearjinni/domain/i_hub_connection_repository.dart';
import 'package:cybearjinni/infrastructure/core/injection.dart';
import 'package:cybearjinni/infrastructure/core/logger.dart';
import 'package:grpc/grpc.dart';

@Deprecated(
  'Old architecture. Replaced with ConnectionsService. Delete after Re adding Hub comunication',
)
class HubRequestRouting {
  static StreamSubscription<dynamic>? requestsFromHubSubscription;

  static Stream<ConnectivityResult>? connectivityChangedStream;

  static bool areWeRunning = false;

  // static int numberOfCrashes = 0;
  static int numberOfConnectivityChange = 0;

  static Future<void> navigateRequest() async {
    if (areWeRunning) {
      return;
    }

    await Future.delayed(const Duration(milliseconds: 100));

    if (areWeRunning) {
      return;
    }
    areWeRunning = true;

    // await requestsFromHubSubscription?.cancel();
    // requestsFromHubSubscription = null;
    connectivityChangedStream = null;

    requestsFromHubSubscription = HubRequestsToApp.streamRequestsToApp.stream
        .listen((dynamic requestsAndStatusFromHub) {
      if (requestsAndStatusFromHub is! RequestsAndStatusFromHub) {
        return;
      }
      if (requestsAndStatusFromHub.sendingType == SendingType.entityType) {
        navigateDeviceRequest(requestsAndStatusFromHub.allRemoteCommands);
      } else if (requestsAndStatusFromHub.sendingType == SendingType.areaType) {
        navigateAreaRequest(requestsAndStatusFromHub.allRemoteCommands);
      } else if (requestsAndStatusFromHub.sendingType ==
          SendingType.sceneType) {
        navigateSceneRequest(requestsAndStatusFromHub.allRemoteCommands);
      } else {
        logger.i(
          'Got from Hub unsupported massage type: '
          '${requestsAndStatusFromHub.sendingType}',
        );
      }
    });
    requestsFromHubSubscription?.onError((error) async {
      if (error is GrpcError && error.code == 1) {
        logger.t('Hub have been disconnected');
      }
      // else if (error is GrpcError && error.code == 2) {
      //   logger.t('Hub have been terminated');
      // }
      else {
        logger.e('Hub stream error: $error');
        if (error.toString().contains('errorCode: 10')) {
          areWeRunning = false;

          navigateRequest();
        }
      }
    });

    connectivityChangedStream = Connectivity().onConnectivityChanged;
    connectivityChangedStream?.listen((ConnectivityResult event) async {
      numberOfConnectivityChange++;
      logger.i('Connectivity changed ${event.name} And $event');
      if (event == ConnectivityResult.none || numberOfConnectivityChange <= 1) {
        return;
      }
      areWeRunning = false;
      navigateRequest();
    });

    await IHubConnectionRepository.instance.connectWithHub();
  }

  static Future<void> navigateAreaRequest(
    String allRemoteCommands,
  ) async {
    // final Map<String, dynamic> requestAsJson =
    // jsonDecode(allRemoteCommands) as Map<String, dynamic>;

    // final AreaEntityDtos areaEntityDtos = AreaEntityDtos(
    //   uniqueId: requestAsJson['uniqueId'] as String,
    //   cbjEntityName: requestAsJson['cbjEntityName'] as String,
    //   background: requestAsJson['background'] as String,
    //   areaTypes: Set<String>.from(requestAsJson['areaTypes'] as Set<dynamic>),
    //   areaDevicesId:
    //       Set<String>.from(requestAsJson['areaDevicesId'] as Set<dynamic>),
    //   areaScenesId:
    //       Set<String>.from(requestAsJson['areaScenesId'] as Set<dynamic>),
    //   areaRoutinesId:
    //       Set<String>.from(requestAsJson['areaRoutinesId'] as Set<dynamic>),
    //   areaBindingsId:
    //       Set<String>.from(requestAsJson['areaBindingsId'] as Set<dynamic>),
    //   areaMostUsedBy:
    //       Set<String>.from(requestAsJson['areaMostUsedBy'] as Set<dynamic>),
    //   areaPermissions:
    //       Set<String>.from(requestAsJson['areaPermissions'] as Set<dynamic>),
    // );

    // final AreaEntity areaEntity = areaEntityDtos.toDomain();

    // IAreaRepository.instance.addOrUpdateArea(areaEntity);
  }

  static Future<void> navigateDeviceRequest(
    String allRemoteCommands,
  ) async {
    final Map<String, dynamic> requestAsJson =
        jsonDecode(allRemoteCommands) as Map<String, dynamic>;
    final String? deviceTypeAsString = requestAsJson['entityTypes'] as String?;

    final String? deviceStateAsString =
        requestAsJson['entityStateGRPC'] as String?;
    if (deviceTypeAsString == null || deviceStateAsString == null) {
      return;
    }

    ///TODO: add request type login support

    final EntityTypes? deviceType = EntityUtils.stringToDt(deviceTypeAsString);

    final EntityStateGRPC? entityStateGRPC =
        EntityUtils.stringToDeviceState(deviceStateAsString);

    if (deviceType == null || entityStateGRPC == null) {
      return;
    }

    late DeviceEntityBase deviceEntity;

    switch (deviceType) {
      case EntityTypes.light:
        deviceEntity =
            GenericLightDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Light device type');
      case EntityTypes.dimmableLight:
        deviceEntity =
            GenericDimmableLightDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Dimmable Light device type');
      case EntityTypes.rgbwLights:
        deviceEntity =
            GenericRgbwLightDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding rgbW light device type');
      case EntityTypes.blinds:
        deviceEntity =
            GenericBlindsDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Blinds device type');
      case EntityTypes.boiler:
        deviceEntity =
            GenericBoilerDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Boiler device type');
      case EntityTypes.smartTV:
        deviceEntity =
            GenericSmartTvDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Smart TV device type');
      case EntityTypes.switch_:
        deviceEntity =
            GenericSwitchDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Addin'
            'g Switch device type');
      case EntityTypes.smartPlug:
        deviceEntity =
            GenericSmartPlugDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Smart Plug device type');
      case EntityTypes.smartComputer:
        deviceEntity =
            GenericSmartComputerDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Smart Plug device type');
      case EntityTypes.printer:
        deviceEntity =
            GenericPrinterDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Smart printer device type');
      case EntityTypes.securityCamera:
        deviceEntity =
            GenericSecurityCameraDeviceDtos.fromJson(requestAsJson).toDomain();
        logger.i('Adding Smart camera device type');
      default:
        if (entityStateGRPC == EntityStateGRPC.pingNow) {
          deviceEntity =
              GenericPingDeviceDtos.fromJson(requestAsJson).toDomain();
          logger.t('Got Ping request');
          return;
        } else {
          logger.w(
            'Entity type is $deviceType is not supported $entityStateGRPC ',
          );
          deviceEntity =
              GenericUnsupportedDeviceDtos.fromJson(requestAsJson).toDomain();
        }
        break;
    }
    IDeviceRepository.instance.addOrUpdateDevice(deviceEntity);
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
