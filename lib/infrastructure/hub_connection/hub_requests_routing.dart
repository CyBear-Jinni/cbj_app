import 'dart:convert';

import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/hub_client.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart'
    as hubGrpc;
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart'
    as smartDevice;
import 'package:cybear_jinni/infrastructure/device/device_dtos.dart';
import 'package:cybear_jinni/infrastructure/device/device_repository.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:kt_dart/kt.dart';

class HubRequestRouting {
  static Future<void> navigateRequest() async {
    HubRequestsToApp.hubRequestsStream
        .listen((hubGrpc.RequestsAndStatusFromHub requestsAndStatusFromHub) {
      if (requestsAndStatusFromHub.sendingType ==
          hubGrpc.SendingType.deviceType) {
        final String requestAsString =
            requestsAndStatusFromHub.allRemoteCommands;
        final Map<String, dynamic> requestAsJson =
            jsonDecode(requestAsString) as Map<String, dynamic>;
        final String? deviceTypeAsString =
            requestAsJson['deviceTypes'] as String?;
        if (deviceTypeAsString == null) {
          return;
          // return left(const DevicesFailure.empty(
          //     failedValue: 'deviceTypeAsString is null'));
        }
        final smartDevice.DeviceTypes? deviceType =
            EnumHelper.stringToDt(deviceTypeAsString);
        if (deviceType != null) {
          final DeviceDtos deviceDtos = DeviceDtos.fromJson(requestAsJson);
          final DeviceEntity deviceEntity = deviceDtos.toDomain();

          if (deviceType == smartDevice.DeviceTypes.light) {
            DevicesStreams.devicesStreamController.sink
                .add([deviceEntity].toImmutableList());
            // return right<DevicesFailure, KtList<DeviceEntity?>>(
            //     [deviceEntity].toImmutableList());
          }
        }
      } else {
        print(
            'SendingType ${requestsAndStatusFromHub.sendingType} does not supported');
      }

      // return right([null].toImmutableList());
      // return left(const DevicesFailure.empty(failedValue: 'sd'));
      // return left<DevicesFailure, KtList<DeviceEntity>>(
      //     DevicesFailure.insufficientPermission());
    });
  }
}
