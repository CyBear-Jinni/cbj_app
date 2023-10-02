import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_computer_device/generic_smart_computer_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_smart_computer_device_dtos.freezed.dart';
part 'generic_smart_computer_device_dtos.g.dart';

@freezed
abstract class GenericSmartComputerDeviceDtos
    implements _$GenericSmartComputerDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericSmartComputerDeviceDtos({
    // @JsonKey(includeFromJson: true)
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
    required String? deviceCbjUniqueId,
    required String? smartComputerSuspendState,
    required String? smartComputerShutDownState,
    String? deviceDtoClass,
    String? stateMassage,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericSmartComputerDeviceDtos;

  GenericSmartComputerDeviceDtos._();

  factory GenericSmartComputerDeviceDtos.fromDomain(
    GenericSmartComputerDE deviceDe,
  ) {
    return GenericSmartComputerDeviceDtos(
      deviceDtoClass: (GenericSmartComputerDeviceDtos).toString(),
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
      smartComputerSuspendState:
          deviceDe.smartComputerSuspendState!.getOrCrash(),
      smartComputerShutDownState:
          deviceDe.smartComputerShutDownState!.getOrCrash(),
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

  factory GenericSmartComputerDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericSmartComputerDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance =
      (GenericSmartComputerDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericSmartComputerDE(
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
      smartComputerSuspendState:
          GenericSmartComputerSuspendState(smartComputerSuspendState),
      smartComputerShutDownState:
          GenericSmartComputerShutdownState(smartComputerShutDownState),
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
