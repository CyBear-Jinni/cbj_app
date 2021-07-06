import 'package:cybear_jinni/domain/devices/device/device_entity.dart';
import 'package:cybear_jinni/domain/devices/device/value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

extension SmartDeviceInfoX on SmartDeviceInfo {
  DeviceEntity toDeviceEntity() {
    return DeviceEntity(
      id: DeviceUniqueId.fromUniqueString(this.id),
      defaultName: DeviceDefaultName(this.defaultName),
      roomId: DeviceUniqueId.fromUniqueString(this.roomId),
      roomName: DeviceRoomName('Will Save the room name'),
      deviceStateGRPC: DeviceState(this.state),
      senderDeviceOs: DeviceSenderDeviceOs(this.senderDeviceOs),
      senderDeviceModel: DeviceSenderDeviceModel(senderDeviceModel),
      senderId: DeviceSenderId.fromUniqueString(this.senderId),
      deviceActions:
          DeviceAction(this.deviceTypesActions.deviceAction.name.toString()),
      deviceTypes:
          DeviceType(this.deviceTypesActions.deviceType.name.toString()),
      compUuid: DeviceCompUuid('12345555'),
    );
  }
}
