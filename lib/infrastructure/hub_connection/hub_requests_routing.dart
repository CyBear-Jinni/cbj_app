import 'dart:convert';

import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/hub_client.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart'
    as hub_grpc;
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart'
    as smart_device;
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_light_device/generic_light_device_dtos.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:cybear_jinni/injection.dart';

class HubRequestRouting {
  static Future<void> navigateRequest() async {
    HubRequestsToApp.hubRequestsStream
        .listen((hub_grpc.RequestsAndStatusFromHub requestsAndStatusFromHub) {
      if (requestsAndStatusFromHub.sendingType ==
          hub_grpc.SendingType.deviceType) {
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
        final smart_device.DeviceTypes? deviceType =
            EnumHelper.stringToDt(deviceTypeAsString);
        if (deviceType != null) {
          final DeviceEntityDtoAbstract deviceDtos =
              GenericLightDeviceDtos.fromJson(requestAsJson);
          final DeviceEntityAbstract deviceEntity = deviceDtos.toDomain();

          if (deviceType == smart_device.DeviceTypes.light) {
            getIt<IDeviceRepository>().addOrUpdateDevice(deviceEntity);
            // return right<DevicesFailure, KtList<GenericLightDE?>>(
            //     [deviceEntity].toImmutableList());
          }
        }
      } else {
        print('SendingType ${requestsAndStatusFromHub.sendingType} '
            'does not supported');
      }

      // return right([null].toImmutableList());
      // return left(const DevicesFailure.empty(failedValue: 'sd'));
      // return left<DevicesFailure, KtList<GenericLightDE>>(
      //     DevicesFailure.insufficientPermission());
    });
  }
}
