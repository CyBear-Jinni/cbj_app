import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_plug_device/generic_smart_plug_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_smart_plug_device_dtos.freezed.dart';
part 'generic_smart_plug_device_dtos.g.dart';

@freezed
abstract class GenericSmartPlugDeviceDtos
    implements _$GenericSmartPlugDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericSmartPlugDeviceDtos({
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
    required String? smartPlugState,
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
    String? stateMassage
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
    ,
  }) = _GenericSmartPlugDeviceDtos;

  GenericSmartPlugDeviceDtos._();

  factory GenericSmartPlugDeviceDtos.fromDomain(
    GenericSmartPlugDE genericSmartPlugDe,
  ) {
    return GenericSmartPlugDeviceDtos(
      deviceDtoClass: (GenericSmartPlugDeviceDtos).toString(),
      id: genericSmartPlugDe.uniqueId.getOrCrash(),
      entityUniqueId: genericSmartPlugDe.entityUniqueId.getOrCrash(),
      cbjEntityName: genericSmartPlugDe.cbjEntityName.getOrCrash(),
      entityOriginalName: genericSmartPlugDe.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericSmartPlugDe.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericSmartPlugDe.entityStateGRPC.getOrCrash(),
      stateMassage: genericSmartPlugDe.stateMassage.getOrCrash(),
      senderDeviceOs: genericSmartPlugDe.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericSmartPlugDe.senderDeviceModel.getOrCrash(),
      senderId: genericSmartPlugDe.senderId.getOrCrash(),
      smartPlugState: genericSmartPlugDe.smartPlugState!.getOrCrash(),
      entityTypes: genericSmartPlugDe.entityTypes.getOrCrash(),
      compUuid: genericSmartPlugDe.compUuid.getOrCrash(),
      deviceVendor: genericSmartPlugDe.deviceVendor.getOrCrash(),
      powerConsumption: genericSmartPlugDe.powerConsumption.getOrCrash(),

      deviceUniqueId: genericSmartPlugDe.deviceUniqueId.getOrCrash(),
      devicePort: genericSmartPlugDe.devicePort.getOrCrash(),
      deviceLastKnownIp: genericSmartPlugDe.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericSmartPlugDe.deviceHostName.getOrCrash(),
      deviceMdns: genericSmartPlugDe.deviceMdns.getOrCrash(),
      devicesMacAddress: genericSmartPlugDe.devicesMacAddress.getOrCrash(),
      entityKey: genericSmartPlugDe.entityKey.getOrCrash(),
      requestTimeStamp: genericSmartPlugDe.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericSmartPlugDe.lastResponseFromDeviceTimeStamp.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericSmartPlugDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericSmartPlugDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericSmartPlugDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericSmartPlugDE(
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
      smartPlugState: GenericSmartPlugState(smartPlugState),
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
