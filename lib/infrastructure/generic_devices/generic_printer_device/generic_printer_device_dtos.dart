import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_printer_device/generic_printer_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_printer_device/generic_printer_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_printer_device_dtos.freezed.dart';
part 'generic_printer_device_dtos.g.dart';

@freezed
abstract class GenericPrinterDeviceDtos
    implements _$GenericPrinterDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericPrinterDeviceDtos({
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
    required String? printerSwitchState,
    required String? lastKnownIp,
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
  }) = _GenericPrinterDeviceDtos;

  GenericPrinterDeviceDtos._();

  factory GenericPrinterDeviceDtos.fromDomain(
    GenericPrinterDE genericPrinterDE,
  ) {
    return GenericPrinterDeviceDtos(
      deviceDtoClass: (GenericPrinterDeviceDtos).toString(),
      id: genericPrinterDE.uniqueId.getOrCrash(),
      entityUniqueId: genericPrinterDE.entityUniqueId.getOrCrash(),
      cbjEntityName: genericPrinterDE.cbjEntityName.getOrCrash(),
      entityOriginalName: genericPrinterDE.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericPrinterDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericPrinterDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericPrinterDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericPrinterDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericPrinterDE.senderDeviceModel.getOrCrash(),
      senderId: genericPrinterDE.senderId.getOrCrash(),
      printerSwitchState: genericPrinterDE.printerSwitchState!.getOrCrash(),
      lastKnownIp: genericPrinterDE.deviceLastKnownIp.getOrCrash(),
      entityTypes: genericPrinterDE.entityTypes.getOrCrash(),
      compUuid: genericPrinterDE.compUuid.getOrCrash(),
      deviceVendor: genericPrinterDE.deviceVendor.getOrCrash(),
      powerConsumption: genericPrinterDE.powerConsumption.getOrCrash(),

      deviceUniqueId: genericPrinterDE.deviceUniqueId.getOrCrash(),
      devicePort: genericPrinterDE.devicePort.getOrCrash(),
      deviceLastKnownIp: genericPrinterDE.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericPrinterDE.deviceHostName.getOrCrash(),
      deviceMdns: genericPrinterDE.deviceMdns.getOrCrash(),
      devicesMacAddress: genericPrinterDE.devicesMacAddress.getOrCrash(),
      entityKey: genericPrinterDE.entityKey.getOrCrash(),
      requestTimeStamp: genericPrinterDE.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericPrinterDE.lastResponseFromDeviceTimeStamp.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericPrinterDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericPrinterDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericPrinterDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericPrinterDE(
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
      printerSwitchState: GenericPrinterSwitchState(printerSwitchState),
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
