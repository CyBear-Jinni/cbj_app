import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_light_device_dtos.freezed.dart';
part 'generic_light_device_dtos.g.dart';

@freezed
abstract class GenericLightDeviceDtos
    implements _$GenericLightDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericLightDeviceDtos({
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
    required String? lightSwitchState,
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
  }) = _GenericLightDeviceDtos;

  GenericLightDeviceDtos._();

  factory GenericLightDeviceDtos.fromDomain(GenericLightDE genericLightDE) {
    return GenericLightDeviceDtos(
      deviceDtoClass: (GenericLightDeviceDtos).toString(),
      id: genericLightDE.uniqueId.getOrCrash(),
      entityUniqueId: genericLightDE.entityUniqueId.getOrCrash(),
      cbjEntityName: genericLightDE.cbjEntityName.getOrCrash(),
      entityOriginalName: genericLightDE.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericLightDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericLightDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericLightDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericLightDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericLightDE.senderDeviceModel.getOrCrash(),
      senderId: genericLightDE.senderId.getOrCrash(),
      lightSwitchState: genericLightDE.lightSwitchState!.getOrCrash(),
      entityTypes: genericLightDE.entityTypes.getOrCrash(),
      compUuid: genericLightDE.compUuid.getOrCrash(),
      deviceVendor: genericLightDE.deviceVendor.getOrCrash(),
      powerConsumption: genericLightDE.powerConsumption.getOrCrash(),

      deviceUniqueId: genericLightDE.deviceUniqueId.getOrCrash(),
      devicePort: genericLightDE.devicePort.getOrCrash(),
      deviceLastKnownIp: genericLightDE.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericLightDE.deviceHostName.getOrCrash(),
      deviceMdns: genericLightDE.deviceMdns.getOrCrash(),
      devicesMacAddress: genericLightDE.devicesMacAddress.getOrCrash(),
      entityKey: genericLightDE.entityKey.getOrCrash(),
      requestTimeStamp: genericLightDE.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericLightDE.lastResponseFromDeviceTimeStamp.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericLightDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericLightDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericLightDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericLightDE(
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
      lightSwitchState: GenericLightSwitchState(lightSwitchState),
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
