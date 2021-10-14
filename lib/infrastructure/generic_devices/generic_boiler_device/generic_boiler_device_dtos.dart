import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_boiler_device_dtos.freezed.dart';
part 'generic_boiler_device_dtos.g.dart';

@freezed
abstract class GenericBoilerDeviceDtos
    implements _$GenericBoilerDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericBoilerDeviceDtos({
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
    required String? boilerSwitchState,
    required String? deviceTypes,
    required String? compUuid,
    required String? deviceVendor

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
    ,
  }) = _GenericBoilerDeviceDtos;

  GenericBoilerDeviceDtos._();

  @override
  final String deviceDtoClassInstance = (GenericBoilerDeviceDtos).toString();

  factory GenericBoilerDeviceDtos.fromDomain(GenericBoilerDE genericBoilerDE) {
    return GenericBoilerDeviceDtos(
      deviceDtoClass: (GenericBoilerDeviceDtos).toString(),
      id: genericBoilerDE.uniqueId.getOrCrash(),
      defaultName: genericBoilerDE.defaultName.getOrCrash(),
      roomId: genericBoilerDE.roomId.getOrCrash(),
      roomName: genericBoilerDE.roomName.getOrCrash(),
      deviceStateGRPC: genericBoilerDE.deviceStateGRPC.getOrCrash(),
      stateMassage: genericBoilerDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericBoilerDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericBoilerDE.senderDeviceModel.getOrCrash(),
      senderId: genericBoilerDE.senderId.getOrCrash(),
      boilerSwitchState: genericBoilerDE.boilerSwitchState!.getOrCrash(),
      deviceTypes: genericBoilerDE.deviceTypes.getOrCrash(),
      compUuid: genericBoilerDE.compUuid.getOrCrash(),
      deviceVendor: genericBoilerDE.deviceVendor.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericBoilerDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericBoilerDeviceDtosFromJson(json);

  DeviceEntityAbstract toDomain() {
    return GenericBoilerDE(
      uniqueId: CoreUniqueId.fromUniqueString(id),
      defaultName: DeviceDefaultName(defaultName),
      roomId: CoreUniqueId.fromUniqueString(roomId),
      roomName: DeviceRoomName(roomName),
      deviceStateGRPC: DeviceState(deviceStateGRPC),
      stateMassage: DeviceStateMassage(stateMassage),
      senderDeviceOs: DeviceSenderDeviceOs(senderDeviceOs),
      senderDeviceModel: DeviceSenderDeviceModel(senderDeviceModel),
      senderId: DeviceSenderId.fromUniqueString(senderId),
      deviceVendor: DeviceVendor(deviceVendor),
      compUuid: DeviceCompUuid(compUuid),
      boilerSwitchState: GenericBoilerSwitchState(boilerSwitchState),
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
