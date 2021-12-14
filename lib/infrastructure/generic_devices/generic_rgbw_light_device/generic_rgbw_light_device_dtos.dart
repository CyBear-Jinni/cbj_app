import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_rgbw_light_device_dtos.freezed.dart';
part 'generic_rgbw_light_device_dtos.g.dart';

@freezed
abstract class GenericRgbwLightDeviceDtos
    implements _$GenericRgbwLightDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericRgbwLightDeviceDtos({
    // @JsonKey(ignore: true)
    String? deviceDtoClass,
    required String id,
    required String vendorUniqueId,
    required String? defaultName,
    required String? deviceStateGRPC,
    String? stateMassage,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? deviceTypes,
    required String? compUuid,
    required String? deviceVendor,
    required String? lightSwitchState,
    required String? lightColorTemperature,
    required String? lightBrightness,
    required String? lightColorAlpha,
    required String? lightColorHue,
    required String? lightColorSaturation,
    required String? lightColorValue,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericRgbwLightDeviceDtos;

  GenericRgbwLightDeviceDtos._();

  factory GenericRgbwLightDeviceDtos.fromDomain(
    GenericRgbwLightDE genericRgbwLightDE,
  ) {
    return GenericRgbwLightDeviceDtos(
      deviceDtoClass: (GenericRgbwLightDeviceDtos).toString(),
      id: genericRgbwLightDE.uniqueId.getOrCrash(),
      vendorUniqueId: genericRgbwLightDE.vendorUniqueId.getOrCrash(),
      defaultName: genericRgbwLightDE.defaultName.getOrCrash(),
      deviceStateGRPC: genericRgbwLightDE.deviceStateGRPC.getOrCrash(),
      stateMassage: genericRgbwLightDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericRgbwLightDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericRgbwLightDE.senderDeviceModel.getOrCrash(),
      senderId: genericRgbwLightDE.senderId.getOrCrash(),
      lightSwitchState: genericRgbwLightDE.lightSwitchState!.getOrCrash(),
      deviceTypes: genericRgbwLightDE.deviceTypes.getOrCrash(),
      compUuid: genericRgbwLightDE.compUuid.getOrCrash(),
      deviceVendor: genericRgbwLightDE.deviceVendor.getOrCrash(),
      lightColorTemperature:
          genericRgbwLightDE.lightColorTemperature.getOrCrash(),
      lightBrightness: genericRgbwLightDE.lightBrightness.getOrCrash(),
      lightColorAlpha: genericRgbwLightDE.lightColorAlpha.getOrCrash(),
      lightColorHue: genericRgbwLightDE.lightColorHue.getOrCrash(),
      lightColorSaturation:
          genericRgbwLightDE.lightColorSaturation.getOrCrash(),
      lightColorValue: genericRgbwLightDE.lightColorValue.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericRgbwLightDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericRgbwLightDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericRgbwLightDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericRgbwLightDE(
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
      lightSwitchState: GenericRgbwLightSwitchState(lightSwitchState),
      lightColorTemperature:
          GenericRgbwLightColorTemperature(lightColorTemperature),
      lightBrightness: GenericRgbwLightBrightness(lightBrightness),
      lightColorAlpha: GenericRgbwLightColorAlpha(lightColorAlpha),
      lightColorHue: GenericRgbwLightColorHue(lightColorHue),
      lightColorSaturation:
          GenericRgbwLightColorSaturation(lightColorSaturation),
      lightColorValue: GenericRgbwLightColorValue(lightColorValue),
    );
  }
}
