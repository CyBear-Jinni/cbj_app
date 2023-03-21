import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_rgbw_light_device_dtos.freezed.dart';
part 'generic_rgbw_light_device_dtos.g.dart';

@freezed
abstract class GenericRgbwLightDeviceDtos
    implements _$GenericRgbwLightDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericRgbwLightDeviceDtos({
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
    required String? lightSwitchState,
    required String? lightColorTemperature,
    required String? lightBrightness,
    required String? lightColorAlpha,
    required String? lightColorHue,
    required String? lightColorSaturation,
    required String? lightColorValue,
    String? deviceDtoClass,
    String? stateMassage,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericRgbwLightDeviceDtos;

  GenericRgbwLightDeviceDtos._();

  factory GenericRgbwLightDeviceDtos.fromDomain(
    GenericRgbwLightDE genericRgbwLightDE,
  ) {
    return GenericRgbwLightDeviceDtos(
      deviceDtoClass: (GenericRgbwLightDeviceDtos).toString(),
      id: genericRgbwLightDE.uniqueId.getOrCrash(),
      entityUniqueId: genericRgbwLightDE.entityUniqueId.getOrCrash(),
      cbjEntityName: genericRgbwLightDE.cbjEntityName.getOrCrash(),
      entityOriginalName: genericRgbwLightDE.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericRgbwLightDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericRgbwLightDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericRgbwLightDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericRgbwLightDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericRgbwLightDE.senderDeviceModel.getOrCrash(),
      senderId: genericRgbwLightDE.senderId.getOrCrash(),
      lightSwitchState: genericRgbwLightDE.lightSwitchState!.getOrCrash(),
      entityTypes: genericRgbwLightDE.entityTypes.getOrCrash(),
      compUuid: genericRgbwLightDE.compUuid.getOrCrash(),
      deviceVendor: genericRgbwLightDE.deviceVendor.getOrCrash(),
      powerConsumption: genericRgbwLightDE.powerConsumption.getOrCrash(),

      deviceUniqueId: genericRgbwLightDE.deviceUniqueId.getOrCrash(),
      devicePort: genericRgbwLightDE.devicePort.getOrCrash(),
      deviceLastKnownIp: genericRgbwLightDE.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericRgbwLightDE.deviceHostName.getOrCrash(),
      deviceMdns: genericRgbwLightDE.deviceMdns.getOrCrash(),
      devicesMacAddress: genericRgbwLightDE.devicesMacAddress.getOrCrash(),
      entityKey: genericRgbwLightDE.entityKey.getOrCrash(),
      requestTimeStamp: genericRgbwLightDE.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericRgbwLightDE.lastResponseFromDeviceTimeStamp.getOrCrash(),

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
      lightSwitchState: GenericRgbwLightSwitchState(lightSwitchState),
      lightColorTemperature:
          GenericRgbwLightColorTemperature(lightColorTemperature),
      lightBrightness: GenericRgbwLightBrightness(lightBrightness),
      lightColorAlpha: GenericRgbwLightColorAlpha(lightColorAlpha),
      lightColorHue: GenericRgbwLightColorHue(lightColorHue),
      lightColorSaturation:
          GenericRgbwLightColorSaturation(lightColorSaturation),
      lightColorValue: GenericRgbwLightColorValue(lightColorValue),
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
