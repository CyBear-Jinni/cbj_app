import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_switch_device/generic_switch_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_switch_device_dtos.freezed.dart';
part 'generic_switch_device_dtos.g.dart';

@freezed
abstract class GenericSwitchDeviceDtos
    implements _$GenericSwitchDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericSwitchDeviceDtos({
    // @JsonKey(ignore: true)
    required String id,
    required String entityUniqueId,
    required String? cbjEntityName,
    required String? entityOriginalName,
    required String? deviceOriginalName,
    required String? entityStateGRPC,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? switchState,
    required String? entityTypes,
    required String? compUuid,
    required String? deviceVendor,
    required String? powerConsumption,
    required String? deviceUniqueId,
    required String? devicePort,
    required String? deviceLastKnownIp,
    required String? deviceHostName,
    required String? deviceMdns,
    required String? devicesMacAddress,
    required String? entityKey,
    required String? requestTimeStamp,
    required String? lastResponseFromDeviceTimeStamp,
    String? deviceDtoClass,
    String? stateMassage,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericSwitchDeviceDtos;

  GenericSwitchDeviceDtos._();

  factory GenericSwitchDeviceDtos.fromDomain(GenericSwitchDE genericSwitchDe) {
    return GenericSwitchDeviceDtos(
      deviceDtoClass: (GenericSwitchDeviceDtos).toString(),
      id: genericSwitchDe.uniqueId.getOrCrash(),
      entityUniqueId: genericSwitchDe.entityUniqueId.getOrCrash(),
      cbjEntityName: genericSwitchDe.cbjEntityName.getOrCrash(),
      entityOriginalName: genericSwitchDe.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericSwitchDe.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericSwitchDe.entityStateGRPC.getOrCrash(),
      stateMassage: genericSwitchDe.stateMassage.getOrCrash(),
      senderDeviceOs: genericSwitchDe.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericSwitchDe.senderDeviceModel.getOrCrash(),
      senderId: genericSwitchDe.senderId.getOrCrash(),
      switchState: genericSwitchDe.switchState!.getOrCrash(),
      entityTypes: genericSwitchDe.entityTypes.getOrCrash(),
      compUuid: genericSwitchDe.compUuid.getOrCrash(),
      deviceVendor: genericSwitchDe.deviceVendor.getOrCrash(),
      powerConsumption: genericSwitchDe.powerConsumption.getOrCrash(),

      deviceUniqueId: genericSwitchDe.deviceUniqueId.getOrCrash(),
      devicePort: genericSwitchDe.devicePort.getOrCrash(),
      deviceLastKnownIp: genericSwitchDe.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericSwitchDe.deviceHostName.getOrCrash(),
      deviceMdns: genericSwitchDe.deviceMdns.getOrCrash(),
      devicesMacAddress: genericSwitchDe.devicesMacAddress.getOrCrash(),
      entityKey: genericSwitchDe.entityKey.getOrCrash(),
      requestTimeStamp: genericSwitchDe.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericSwitchDe.lastResponseFromDeviceTimeStamp.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericSwitchDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericSwitchDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericSwitchDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericSwitchDE(
      uniqueId: CoreUniqueId.fromUniqueString(id),
      entityUniqueId: EntityUniqueId(entityUniqueId),
      cbjEntityName: CbjEntityName(cbjEntityName),
      entityOriginalName: EntityOriginalName(cbjEntityName),
      deviceOriginalName: DeviceOriginalName(cbjEntityName),
      entityStateGRPC: EntityState(entityStateGRPC),
      stateMassage: DeviceStateMassage(stateMassage),
      senderDeviceOs: DeviceSenderDeviceOs(senderDeviceOs),
      senderDeviceModel: DeviceSenderDeviceModel(senderDeviceModel),
      senderId: DeviceSenderId.fromUniqueString(senderId),
      deviceVendor: DeviceVendor(deviceVendor),
      compUuid: DeviceCompUuid(compUuid),
      switchState: GenericSwitchSwitchState(switchState),
      powerConsumption: DevicePowerConsumption(powerConsumption),
      deviceUniqueId: DeviceUniqueId(deviceUniqueId),
      devicePort: DevicePort(devicePort),
      deviceLastKnownIp: DeviceLastKnownIp(deviceLastKnownIp),
      deviceHostName: DeviceHostName(deviceHostName),
      deviceMdns: DeviceMdns(deviceMdns),
      devicesMacAddress: DevicesMacAddress(devicesMacAddress),
      entityKey: EntityKey(entityKey),
      requestTimeStamp: RequestTimeStamp(requestTimeStamp),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp(lastResponseFromDeviceTimeStamp),
    );
  }
}
