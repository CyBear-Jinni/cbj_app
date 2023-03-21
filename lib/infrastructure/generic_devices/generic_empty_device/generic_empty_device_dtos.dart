import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_empty_device/generic_empty_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_empty_device/generic_empty_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_empty_device_dtos.freezed.dart';
part 'generic_empty_device_dtos.g.dart';

@freezed
abstract class GenericEmptyDeviceDtos
    implements _$GenericEmptyDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericEmptyDeviceDtos({
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
    required String? emptySwitchState,
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
  }) = _GenericEmptyDeviceDtos;

  GenericEmptyDeviceDtos._();

  factory GenericEmptyDeviceDtos.fromDomain(GenericEmptyDE genericEmptyDE) {
    return GenericEmptyDeviceDtos(
      deviceDtoClass: (GenericEmptyDeviceDtos).toString(),
      id: genericEmptyDE.uniqueId.getOrCrash(),
      entityUniqueId: genericEmptyDE.entityUniqueId.getOrCrash(),
      cbjEntityName: genericEmptyDE.cbjEntityName.getOrCrash(),
      entityOriginalName: genericEmptyDE.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericEmptyDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericEmptyDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericEmptyDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericEmptyDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericEmptyDE.senderDeviceModel.getOrCrash(),
      senderId: genericEmptyDE.senderId.getOrCrash(),
      emptySwitchState: genericEmptyDE.emptySwitchState!.getOrCrash(),
      entityTypes: genericEmptyDE.entityTypes.getOrCrash(),
      compUuid: genericEmptyDE.compUuid.getOrCrash(),
      deviceVendor: genericEmptyDE.deviceVendor.getOrCrash(),
      powerConsumption: genericEmptyDE.powerConsumption.getOrCrash(),

      deviceUniqueId: genericEmptyDE.deviceUniqueId.getOrCrash(),
      devicePort: genericEmptyDE.devicePort.getOrCrash(),
      deviceLastKnownIp: genericEmptyDE.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericEmptyDE.deviceHostName.getOrCrash(),
      deviceMdns: genericEmptyDE.deviceMdns.getOrCrash(),
      devicesMacAddress: genericEmptyDE.devicesMacAddress.getOrCrash(),
      entityKey: genericEmptyDE.entityKey.getOrCrash(),
      requestTimeStamp: genericEmptyDE.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericEmptyDE.lastResponseFromDeviceTimeStamp.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericEmptyDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericEmptyDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericEmptyDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericEmptyDE(
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
      emptySwitchState: GenericEmptySwitchState(emptySwitchState),
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
