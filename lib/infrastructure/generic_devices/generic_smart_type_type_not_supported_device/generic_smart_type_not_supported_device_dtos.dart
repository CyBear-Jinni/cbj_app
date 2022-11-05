import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_type_not_supported_device/generic_smart_type_not_supported_entity.dart';
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
    required String vendorUniqueId,
    required String? defaultName,
    required String? deviceStateGRPC,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? deviceTypes,
    required String? compUuid,
    required String? deviceVendor,
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
      vendorUniqueId:
          genericSmartTypeNotSupportedDE.vendorUniqueId.getOrCrash(),
      defaultName: genericSmartTypeNotSupportedDE.defaultName.getOrCrash(),
      deviceStateGRPC:
          genericSmartTypeNotSupportedDE.deviceStateGRPC.getOrCrash(),
      stateMassage: genericSmartTypeNotSupportedDE.stateMassage.getOrCrash(),
      senderDeviceOs:
          genericSmartTypeNotSupportedDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel:
          genericSmartTypeNotSupportedDE.senderDeviceModel.getOrCrash(),
      senderId: genericSmartTypeNotSupportedDE.senderId.getOrCrash(),
      deviceTypes: genericSmartTypeNotSupportedDE.deviceTypes.getOrCrash(),
      compUuid: genericSmartTypeNotSupportedDE.compUuid.getOrCrash(),
      deviceVendor: genericSmartTypeNotSupportedDE.deviceVendor.getOrCrash(),
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
      vendorUniqueId: VendorUniqueId.fromUniqueString(vendorUniqueId),
      defaultName: DeviceDefaultName(defaultName),
      deviceStateGRPC: DeviceState(deviceStateGRPC),
      stateMassage: DeviceStateMassage(stateMassage),
      senderDeviceOs: DeviceSenderDeviceOs(senderDeviceOs),
      senderDeviceModel: DeviceSenderDeviceModel(senderDeviceModel),
      senderId: DeviceSenderId.fromUniqueString(senderId),
      deviceVendor: DeviceVendor(deviceVendor),
      compUuid: DeviceCompUuid(compUuid),
    );
  }
}
