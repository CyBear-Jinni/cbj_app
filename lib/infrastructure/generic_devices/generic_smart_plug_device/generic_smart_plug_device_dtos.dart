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
    required String? deviceCbjUniqueId,
    String? deviceDtoClass,
    String? stateMassage
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
    ,
  }) = _GenericSmartPlugDeviceDtos;

  GenericSmartPlugDeviceDtos._();

  factory GenericSmartPlugDeviceDtos.fromDomain(
    GenericSmartPlugDE deviceDe,
  ) {
    return GenericSmartPlugDeviceDtos(
      deviceDtoClass: (GenericSmartPlugDeviceDtos).toString(),
      id: deviceDe.uniqueId.getOrCrash(),
      entityUniqueId: deviceDe.entityUniqueId.getOrCrash(),
      cbjEntityName: deviceDe.cbjEntityName.getOrCrash(),
      entityOriginalName: deviceDe.entityOriginalName.getOrCrash(),
      deviceOriginalName: deviceDe.deviceOriginalName.getOrCrash(),
      entityStateGRPC: deviceDe.entityStateGRPC.getOrCrash(),
      stateMassage: deviceDe.stateMassage.getOrCrash(),
      senderDeviceOs: deviceDe.senderDeviceOs.getOrCrash(),
      senderDeviceModel: deviceDe.senderDeviceModel.getOrCrash(),
      senderId: deviceDe.senderId.getOrCrash(),
      smartPlugState: deviceDe.smartPlugState!.getOrCrash(),
      entityTypes: deviceDe.entityTypes.getOrCrash(),
      compUuid: deviceDe.compUuid.getOrCrash(),
      deviceVendor: deviceDe.deviceVendor.getOrCrash(),
      powerConsumption: deviceDe.powerConsumption.getOrCrash(),
      deviceUniqueId: deviceDe.deviceUniqueId.getOrCrash(),
      devicePort: deviceDe.devicePort.getOrCrash(),
      deviceLastKnownIp: deviceDe.deviceLastKnownIp.getOrCrash(),
      deviceHostName: deviceDe.deviceHostName.getOrCrash(),
      deviceMdns: deviceDe.deviceMdns.getOrCrash(),
      devicesMacAddress: deviceDe.devicesMacAddress.getOrCrash(),
      entityKey: deviceDe.entityKey.getOrCrash(),
      requestTimeStamp: deviceDe.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          deviceDe.lastResponseFromDeviceTimeStamp.getOrCrash(),
      deviceCbjUniqueId: deviceDe.deviceCbjUniqueId.getOrCrash(),
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
      deviceCbjUniqueId: CoreUniqueId.fromUniqueString(deviceCbjUniqueId!),
    );
  }
}
