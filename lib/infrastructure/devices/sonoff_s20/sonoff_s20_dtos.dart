import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_device_entity.dart';
import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_value_objects.dart';
import 'package:cybear_jinni/infrastructure/devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sonoff_s20_dtos.freezed.dart';
part 'sonoff_s20_dtos.g.dart';

@freezed
abstract class SonoffS20Dtos
    implements _$SonoffS20Dtos, DeviceEntityDtoAbstract {
  factory SonoffS20Dtos({
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
  }) = _SonoffS20Dtos;

  SonoffS20Dtos._();

  @override
  final String deviceDtoClassInstance = (SonoffS20Dtos).toString();

  factory SonoffS20Dtos.fromDomain(SonoffS20DE sonoffS20DE) {
    return SonoffS20Dtos(
      deviceDtoClass: (SonoffS20Dtos).toString(),
      id: sonoffS20DE.id!.getOrCrash(),
      defaultName: sonoffS20DE.defaultName!.getOrCrash(),
      roomId: sonoffS20DE.roomId!.getOrCrash(),
      roomName: sonoffS20DE.roomName!.getOrCrash(),
      deviceStateGRPC: sonoffS20DE.deviceStateGRPC!.getOrCrash(),
      stateMassage: sonoffS20DE.stateMassage!.getOrCrash(),
      senderDeviceOs: sonoffS20DE.senderDeviceOs!.getOrCrash(),
      senderDeviceModel: sonoffS20DE.senderDeviceModel!.getOrCrash(),
      senderId: sonoffS20DE.senderId!.getOrCrash(),
      deviceActions: sonoffS20DE.deviceActions!.getOrCrash(),
      deviceTypes: sonoffS20DE.deviceTypes!.getOrCrash(),
      compUuid: sonoffS20DE.compUuid!.getOrCrash(),
      deviceSecondWiFi: sonoffS20DE.deviceSecondWiFi!.getOrCrash(),
      deviceMdnsName: sonoffS20DE.deviceMdnsName!.getOrCrash(),
      lastKnownIp: sonoffS20DE.lastKnownIp!.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory SonoffS20Dtos.fromJson(Map<String, dynamic> json) =>
      _$SonoffS20DtosFromJson(json);

  DeviceEntityAbstract toDomain() {
    print('SonoffS2Dto to Domain');
    return SonoffS20DE(
      id: SonoffS20UniqueId.fromUniqueString(id),
      defaultName: SonoffS20DefaultName(defaultName),
      roomId: SonoffS20UniqueId.fromUniqueString(roomId),
      roomName: SonoffS20RoomName(roomName),
      deviceStateGRPC: SonoffS20State(deviceStateGRPC),
      stateMassage: SonoffS20StateMassage(stateMassage),
      senderDeviceOs: SonoffS20SenderDeviceOs(senderDeviceOs),
      senderDeviceModel: SonoffS20SenderDeviceModel(senderDeviceModel),
      senderId: SonoffS20SenderId.fromUniqueString(senderId),
      deviceActions: SonoffS20Action(deviceActions),
      deviceTypes: SonoffS20Type(deviceTypes),
      compUuid: SonoffS20CompUuid(compUuid),
      deviceSecondWiFi: SonoffS20SecondWiFiName(deviceSecondWiFi),
      deviceMdnsName: SonoffS20MdnsName(deviceMdnsName),
      lastKnownIp: SonoffS20LastKnownIp(lastKnownIp),
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
