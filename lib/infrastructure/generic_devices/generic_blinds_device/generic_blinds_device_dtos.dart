import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_blinds_device_dtos.freezed.dart';
part 'generic_blinds_device_dtos.g.dart';

@freezed
abstract class GenericBlindsDeviceDtos
    implements _$GenericBlindsDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericBlindsDeviceDtos({
    // @JsonKey(ignore: true)
    required String id,
    required String vendorUniqueId,
    required String? defaultName,
    required String? deviceStateGRPC,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? blindsSwitchState,
    required String? deviceTypes,
    required String? compUuid,
    required String? deviceVendor,
    String? deviceDtoClass,
    String? stateMassage
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
    ,
  }) = _GenericBlindsDeviceDtos;

  GenericBlindsDeviceDtos._();

  factory GenericBlindsDeviceDtos.fromDomain(GenericBlindsDE genericBlindsDE) {
    return GenericBlindsDeviceDtos(
      deviceDtoClass: (GenericBlindsDeviceDtos).toString(),
      id: genericBlindsDE.uniqueId.getOrCrash(),
      vendorUniqueId: genericBlindsDE.vendorUniqueId.getOrCrash(),
      defaultName: genericBlindsDE.defaultName.getOrCrash(),
      deviceStateGRPC: genericBlindsDE.deviceStateGRPC.getOrCrash(),
      stateMassage: genericBlindsDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericBlindsDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericBlindsDE.senderDeviceModel.getOrCrash(),
      senderId: genericBlindsDE.senderId.getOrCrash(),
      blindsSwitchState: genericBlindsDE.blindsSwitchState!.getOrCrash(),
      deviceTypes: genericBlindsDE.deviceTypes.getOrCrash(),
      compUuid: genericBlindsDE.compUuid.getOrCrash(),
      deviceVendor: genericBlindsDE.deviceVendor.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericBlindsDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericBlindsDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericBlindsDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericBlindsDE(
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
      blindsSwitchState: GenericBlindsSwitchState(blindsSwitchState),
    );
  }
}
