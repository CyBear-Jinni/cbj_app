import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/esphome/esphome_device_entity.dart';
import 'package:cybear_jinni/domain/devices/esphome/esphome_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'esphome_dtos.freezed.dart';
part 'esphome_dtos.g.dart';

@freezed
abstract class EspHomeDtos implements _$EspHomeDtos, DeviceEntityDtoAbstract {
  factory EspHomeDtos({
    // @JsonKey(ignore: true)
    String? deviceDtoClass,
    String? id,
    required String? defaultName,
    required String? roomId,
    required String? roomName,
    required String? deviceStateGRPC,
    String? stateMassage,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? deviceActions,
    required String? deviceTypes,
    required String? compUuid,
    String? deviceSecondWiFi,
    String? deviceMdnsName,
    String? lastKnownIp,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _EspHomeDtos;

  EspHomeDtos._();

  @override
  final String deviceDtoClassInstance = (EspHomeDtos).toString();

  @override
  factory EspHomeDtos.fromDomain(EspHomeDE esphomeDE) {
    return EspHomeDtos(
      deviceDtoClass: (EspHomeDtos).toString(),
      id: esphomeDE.id!.getOrCrash(),
      defaultName: esphomeDE.defaultName!.getOrCrash(),
      roomId: esphomeDE.roomId!.getOrCrash(),
      roomName: esphomeDE.roomName!.getOrCrash(),
      deviceStateGRPC: esphomeDE.deviceStateGRPC!.getOrCrash(),
      stateMassage: esphomeDE.stateMassage!.getOrCrash(),
      senderDeviceOs: esphomeDE.senderDeviceOs!.getOrCrash(),
      senderDeviceModel: esphomeDE.senderDeviceModel!.getOrCrash(),
      senderId: esphomeDE.senderId!.getOrCrash(),
      deviceActions: esphomeDE.deviceActions!.getOrCrash(),
      deviceTypes: esphomeDE.deviceTypes!.getOrCrash(),
      compUuid: esphomeDE.compUuid!.getOrCrash(),
      deviceSecondWiFi: esphomeDE.deviceSecondWiFi!.getOrCrash(),
      deviceMdnsName: esphomeDE.deviceMdnsName!.getOrCrash(),
      lastKnownIp: esphomeDE.lastKnownIp!.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory EspHomeDtos.fromJson(Map<String, dynamic> json) =>
      _$EspHomeDtosFromJson(json);

  DeviceEntityAbstract toDomain() {
    print('EspHomeDto to Domain');
    return EspHomeDE(
      id: EspHomeUniqueId.fromUniqueString(id),
      defaultName: EspHomeDefaultName(defaultName),
      roomId: EspHomeUniqueId.fromUniqueString(roomId),
      roomName: EspHomeRoomName(roomName),
      deviceStateGRPC: EspHomeState(deviceStateGRPC),
      stateMassage: EspHomeStateMassage(stateMassage),
      senderDeviceOs: EspHomeSenderDeviceOs(senderDeviceOs),
      senderDeviceModel: EspHomeSenderDeviceModel(senderDeviceModel),
      senderId: EspHomeSenderId.fromUniqueString(senderId),
      deviceActions: EspHomeAction(deviceActions),
      deviceTypes: EspHomeType(deviceTypes),
      compUuid: EspHomeCompUuid(compUuid),
      deviceSecondWiFi: EspHomeSecondWiFiName(deviceSecondWiFi),
      deviceMdnsName: EspHomeMdnsName(deviceMdnsName),
      lastKnownIp: EspHomeLastKnownIp(lastKnownIp),
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
