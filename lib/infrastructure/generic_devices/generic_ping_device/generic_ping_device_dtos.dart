import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_ping_device/generic_ping_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_ping_device/generic_ping_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_ping_device_dtos.freezed.dart';
part 'generic_ping_device_dtos.g.dart';

@freezed
abstract class GenericPingDeviceDtos
    implements _$GenericPingDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericPingDeviceDtos({
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
    required String? pingSwitchState,
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
  }) = _GenericPingDeviceDtos;

  GenericPingDeviceDtos._();

  factory GenericPingDeviceDtos.fromDomain(GenericPingDE genericPingDE) {
    return GenericPingDeviceDtos(
      deviceDtoClass: (GenericPingDeviceDtos).toString(),
      id: genericPingDE.uniqueId.getOrCrash(),
      entityUniqueId: genericPingDE.entityUniqueId.getOrCrash(),
      cbjEntityName: genericPingDE.cbjEntityName.getOrCrash(),
      entityOriginalName: genericPingDE.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericPingDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericPingDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericPingDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericPingDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericPingDE.senderDeviceModel.getOrCrash(),
      senderId: genericPingDE.senderId.getOrCrash(),
      pingSwitchState: genericPingDE.pingSwitchState!.getOrCrash(),
      entityTypes: genericPingDE.entityTypes.getOrCrash(),
      compUuid: genericPingDE.compUuid.getOrCrash(),
      deviceVendor: genericPingDE.deviceVendor.getOrCrash(),
      powerConsumption: genericPingDE.powerConsumption.getOrCrash(),

      deviceUniqueId: genericPingDE.deviceUniqueId.getOrCrash(),
      devicePort: genericPingDE.devicePort.getOrCrash(),
      deviceLastKnownIp: genericPingDE.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericPingDE.deviceHostName.getOrCrash(),
      deviceMdns: genericPingDE.deviceMdns.getOrCrash(),
      devicesMacAddress: genericPingDE.devicesMacAddress.getOrCrash(),
      entityKey: genericPingDE.entityKey.getOrCrash(),
      requestTimeStamp: genericPingDE.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericPingDE.lastResponseFromDeviceTimeStamp.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericPingDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericPingDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericPingDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericPingDE(
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
      pingSwitchState: GenericPingSwitchState(pingSwitchState),
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
