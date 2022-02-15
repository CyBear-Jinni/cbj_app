import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_empty_device/generic_empty_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_empty_device/generic_empty_value_objects.dart';
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
    required String vendorUniqueId,
    required String? defaultName,
    required String? deviceStateGRPC,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? emptySwitchState,
    required String? deviceTypes,
    required String? compUuid,
    required String? deviceVendor,
    String? deviceDtoClass,
    String? stateMassage,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericEmptyDeviceDtos;

  GenericEmptyDeviceDtos._();

  factory GenericEmptyDeviceDtos.fromDomain(GenericEmptyDE genericEmptyDE) {
    return GenericEmptyDeviceDtos(
      deviceDtoClass: (GenericEmptyDeviceDtos).toString(),
      id: genericEmptyDE.uniqueId.getOrCrash(),
      vendorUniqueId: genericEmptyDE.vendorUniqueId.getOrCrash(),
      defaultName: genericEmptyDE.defaultName.getOrCrash(),
      deviceStateGRPC: genericEmptyDE.deviceStateGRPC.getOrCrash(),
      stateMassage: genericEmptyDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericEmptyDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericEmptyDE.senderDeviceModel.getOrCrash(),
      senderId: genericEmptyDE.senderId.getOrCrash(),
      emptySwitchState: genericEmptyDE.emptySwitchState!.getOrCrash(),
      deviceTypes: genericEmptyDE.deviceTypes.getOrCrash(),
      compUuid: genericEmptyDE.compUuid.getOrCrash(),
      deviceVendor: genericEmptyDE.deviceVendor.getOrCrash(),
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
      vendorUniqueId: VendorUniqueId.fromUniqueString(vendorUniqueId),
      defaultName: DeviceDefaultName(defaultName),
      deviceStateGRPC: DeviceState(deviceStateGRPC),
      stateMassage: DeviceStateMassage(stateMassage),
      senderDeviceOs: DeviceSenderDeviceOs(senderDeviceOs),
      senderDeviceModel: DeviceSenderDeviceModel(senderDeviceModel),
      senderId: DeviceSenderId.fromUniqueString(senderId),
      deviceVendor: DeviceVendor(deviceVendor),
      compUuid: DeviceCompUuid(compUuid),
      emptySwitchState: GenericEmptySwitchState(emptySwitchState),
    );
  }
}
