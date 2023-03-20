import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_light_with_brightness_device/generic_light_with_brightness_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_light_with_brightness_device/generic_light_with_brightness_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_light_with_brightness_device_dtos.freezed.dart';
part 'generic_light_with_brightness_device_dtos.g.dart';

@freezed
abstract class GenericLightWithBrightnessDeviceDtos
    implements _$GenericLightWithBrightnessDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericLightWithBrightnessDeviceDtos({
    // @JsonKey(ignore: true)
    required String id,
    required String vendorUniqueId,
    required String? cbjEntityName,
    required String? entityOriginalName,
    required String? deviceOriginalName,
    required String? entityStateGRPC,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? lightSwitchState,
    required String? entityTypes,
    required String? compUuid,
    required String? deviceVendor,
    required String? powerConsumption,
    required String? lightBrightness,
    String? deviceDtoClass,
    String? stateMassage,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericLightWithBrightnessDeviceDtos;

  GenericLightWithBrightnessDeviceDtos._();

  factory GenericLightWithBrightnessDeviceDtos.fromDomain(
    GenericLightWithBrightnessDE genericLightWithBrightnessDE,
  ) {
    return GenericLightWithBrightnessDeviceDtos(
      deviceDtoClass: (GenericLightWithBrightnessDeviceDtos).toString(),
      id: genericLightWithBrightnessDE.uniqueId.getOrCrash(),
      vendorUniqueId: genericLightWithBrightnessDE.vendorUniqueId.getOrCrash(),
      cbjEntityName: genericLightWithBrightnessDE.cbjEntityName.getOrCrash(),
      entityOriginalName:
          genericLightWithBrightnessDE.entityOriginalName.getOrCrash(),
      deviceOriginalName:
          genericLightWithBrightnessDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC:
          genericLightWithBrightnessDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericLightWithBrightnessDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericLightWithBrightnessDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel:
          genericLightWithBrightnessDE.senderDeviceModel.getOrCrash(),
      senderId: genericLightWithBrightnessDE.senderId.getOrCrash(),
      lightSwitchState:
          genericLightWithBrightnessDE.lightSwitchState!.getOrCrash(),
      entityTypes: genericLightWithBrightnessDE.entityTypes.getOrCrash(),
      compUuid: genericLightWithBrightnessDE.compUuid.getOrCrash(),
      deviceVendor: genericLightWithBrightnessDE.deviceVendor.getOrCrash(),
      lightBrightness:
          genericLightWithBrightnessDE.lightBrightness.getOrCrash(),
      powerConsumption:
          genericLightWithBrightnessDE.powerConsumption.getOrCrash(),

      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericLightWithBrightnessDeviceDtos.fromJson(
          Map<String, dynamic> json) =>
      _$GenericLightWithBrightnessDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance =
      (GenericLightWithBrightnessDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericLightWithBrightnessDE(
      uniqueId: CoreUniqueId.fromUniqueString(id),
      vendorUniqueId: VendorUniqueId.fromUniqueString(vendorUniqueId),
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
      lightSwitchState: GenericLightWithBrightnessSwitchState(lightSwitchState),
      lightBrightness: GenericLightWithBrightnessBrightness(lightBrightness),
      powerConsumption: DevicePowerConsumption(powerConsumption),
    );
  }
}
