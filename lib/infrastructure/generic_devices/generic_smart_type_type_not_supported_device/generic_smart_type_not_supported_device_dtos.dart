import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_type_not_supported_device/generic_smart_type_not_supported_entity.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_smart_type_not_supported_device_dtos.freezed.dart';
part 'generic_smart_type_not_supported_device_dtos.g.dart';

@freezed
abstract class GenericSmartTypeNotSupportedDeviceDtos
    implements
        _$GenericSmartTypeNotSupportedDeviceDtos,
        DeviceEntityDtoAbstract {
  factory GenericSmartTypeNotSupportedDeviceDtos({
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
  }) = _GenericSmartTypeNotSupportedDeviceDtos;

  GenericSmartTypeNotSupportedDeviceDtos._();

  factory GenericSmartTypeNotSupportedDeviceDtos.fromDomain(
    GenericSmartTypeNotSupportedDE genericSmartTypeNotSupportedDE,
  ) {
    return GenericSmartTypeNotSupportedDeviceDtos(
      deviceDtoClass: (GenericSmartTypeNotSupportedDeviceDtos).toString(),
      id: genericSmartTypeNotSupportedDE.uniqueId.getOrCrash(),
      entityUniqueId:
          genericSmartTypeNotSupportedDE.entityUniqueId.getOrCrash(),
      cbjEntityName: genericSmartTypeNotSupportedDE.cbjEntityName.getOrCrash(),
      entityOriginalName:
          genericSmartTypeNotSupportedDE.entityOriginalName.getOrCrash(),
      deviceOriginalName:
          genericSmartTypeNotSupportedDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC:
          genericSmartTypeNotSupportedDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericSmartTypeNotSupportedDE.stateMassage.getOrCrash(),
      senderDeviceOs:
          genericSmartTypeNotSupportedDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel:
          genericSmartTypeNotSupportedDE.senderDeviceModel.getOrCrash(),
      senderId: genericSmartTypeNotSupportedDE.senderId.getOrCrash(),
      entityTypes: genericSmartTypeNotSupportedDE.entityTypes.getOrCrash(),
      compUuid: genericSmartTypeNotSupportedDE.compUuid.getOrCrash(),
      deviceVendor: genericSmartTypeNotSupportedDE.deviceVendor.getOrCrash(),
      powerConsumption:
          genericSmartTypeNotSupportedDE.powerConsumption.getOrCrash(),

      deviceUniqueId:
          genericSmartTypeNotSupportedDE.deviceUniqueId.getOrCrash(),
      devicePort: genericSmartTypeNotSupportedDE.devicePort.getOrCrash(),
      deviceLastKnownIp:
          genericSmartTypeNotSupportedDE.deviceLastKnownIp.getOrCrash(),
      deviceHostName:
          genericSmartTypeNotSupportedDE.deviceHostName.getOrCrash(),
      deviceMdns: genericSmartTypeNotSupportedDE.deviceMdns.getOrCrash(),
      devicesMacAddress:
          genericSmartTypeNotSupportedDE.devicesMacAddress.getOrCrash(),
      entityKey: genericSmartTypeNotSupportedDE.entityKey.getOrCrash(),
      requestTimeStamp:
          genericSmartTypeNotSupportedDE.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp: genericSmartTypeNotSupportedDE
          .lastResponseFromDeviceTimeStamp
          .getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericSmartTypeNotSupportedDeviceDtos.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GenericSmartTypeNotSupportedDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance =
      (GenericSmartTypeNotSupportedDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericSmartTypeNotSupportedDE(
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
