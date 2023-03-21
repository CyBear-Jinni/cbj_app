import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_boiler_device/generic_boiler_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_boiler_device_dtos.freezed.dart';
part 'generic_boiler_device_dtos.g.dart';

@freezed
abstract class GenericBoilerDeviceDtos
    implements _$GenericBoilerDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericBoilerDeviceDtos({
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
    required String? boilerSwitchState,
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
  }) = _GenericBoilerDeviceDtos;

  GenericBoilerDeviceDtos._();

  factory GenericBoilerDeviceDtos.fromDomain(GenericBoilerDE genericBoilerDE) {
    return GenericBoilerDeviceDtos(
      deviceDtoClass: (GenericBoilerDeviceDtos).toString(),
      id: genericBoilerDE.uniqueId.getOrCrash(),
      entityUniqueId: genericBoilerDE.entityUniqueId.getOrCrash(),
      cbjEntityName: genericBoilerDE.cbjEntityName.getOrCrash(),
      entityOriginalName: genericBoilerDE.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericBoilerDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericBoilerDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericBoilerDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericBoilerDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericBoilerDE.senderDeviceModel.getOrCrash(),
      senderId: genericBoilerDE.senderId.getOrCrash(),
      boilerSwitchState: genericBoilerDE.boilerSwitchState!.getOrCrash(),
      entityTypes: genericBoilerDE.entityTypes.getOrCrash(),
      compUuid: genericBoilerDE.compUuid.getOrCrash(),
      deviceVendor: genericBoilerDE.deviceVendor.getOrCrash(),
      powerConsumption: genericBoilerDE.powerConsumption.getOrCrash(),

      deviceUniqueId: genericBoilerDE.deviceUniqueId.getOrCrash(),
      devicePort: genericBoilerDE.devicePort.getOrCrash(),
      deviceLastKnownIp: genericBoilerDE.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericBoilerDE.deviceHostName.getOrCrash(),
      deviceMdns: genericBoilerDE.deviceMdns.getOrCrash(),
      devicesMacAddress: genericBoilerDE.devicesMacAddress.getOrCrash(),
      entityKey: genericBoilerDE.entityKey.getOrCrash(),
      requestTimeStamp: genericBoilerDE.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericBoilerDE.lastResponseFromDeviceTimeStamp.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericBoilerDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericBoilerDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericBoilerDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericBoilerDE(
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
      boilerSwitchState: GenericBoilerSwitchState(boilerSwitchState),
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
