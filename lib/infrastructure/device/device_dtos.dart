import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_dtos.freezed.dart';
part 'device_dtos.g.dart';

@freezed
abstract class DeviceDtos implements _$DeviceDtos {
  const factory DeviceDtos({
    @JsonKey(ignore: true) String? id,
    required String? defaultName,
    required String? roomId,
    required String? roomName,
    required String? state,
    String? stateMassage,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? action,
    required String? type,
    required String? compUuid,
    String? deviceSecondWiFi,
    String? deviceMdnsName,
    String? lastKnownIp,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _DeviceDtos;

  const DeviceDtos._();

  factory DeviceDtos.fromDomain(DeviceEntity deviceEntity) {
    return DeviceDtos(
      id: deviceEntity.id!.getOrCrash(),
      defaultName: deviceEntity.defaultName!.getOrCrash(),
      roomId: deviceEntity.roomId!.getOrCrash(),
      roomName: deviceEntity.roomName!.getOrCrash(),
      state: deviceEntity.state!.getOrCrash(),
      stateMassage: deviceEntity.stateMassage!.getOrCrash(),
      senderDeviceOs: deviceEntity.senderDeviceOs!.getOrCrash(),
      senderDeviceModel: deviceEntity.senderDeviceModel!.getOrCrash(),
      senderId: deviceEntity.senderId!.getOrCrash(),
      action: deviceEntity.action!.getOrCrash(),
      type: deviceEntity.type!.getOrCrash(),
      compUuid: deviceEntity.compUuid!.getOrCrash(),
      deviceSecondWiFi: deviceEntity.deviceSecondWiFi!.getOrCrash(),
      deviceMdnsName: deviceEntity.deviceMdnsName!.getOrCrash(),
      lastKnownIp: deviceEntity.lastKnownIp!.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory DeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$DeviceDtosFromJson(json);

  factory DeviceDtos.fromFirestore(DocumentSnapshot doc) {
    return DeviceDtos.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  DeviceEntity toDomain() {
    return DeviceEntity(
      id: DeviceUniqueId.fromUniqueString(id),
      defaultName: DeviceDefaultName(defaultName),
      roomId: DeviceUniqueId.fromUniqueString(roomId),
      roomName: DeviceRoomName(roomName),
      state: DeviceState(state),
      stateMassage: DeviceStateMassage(stateMassage),
      senderDeviceOs: DeviceSenderDeviceOs(senderDeviceOs),
      senderDeviceModel: DeviceSenderDeviceModel(senderDeviceModel),
      senderId: DeviceSenderId.fromUniqueString(senderId),
      action: DeviceAction(action),
      type: DeviceType(type),
      compUuid: DeviceCompUuid(compUuid),
      deviceSecondWiFi: DeviceSecondWiFiName(deviceSecondWiFi),
      deviceMdnsName: DeviceMdnsName(deviceMdnsName),
      lastKnownIp: DeviceLastKnownIp(lastKnownIp),
    );
  }
}

// class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
//   const ServerTimestampConverter();
//
//   @override
//   FieldValue fromJson(Object json) {
//     return FieldValue.serverTimestamp();
//   }
//
//   @override
//   Object toJson(FieldValue fieldValue) => fieldValue;
// }
