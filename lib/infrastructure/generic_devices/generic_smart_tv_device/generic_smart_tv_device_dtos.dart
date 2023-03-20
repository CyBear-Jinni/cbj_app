import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_smart_tv_device_dtos.freezed.dart';
part 'generic_smart_tv_device_dtos.g.dart';

@freezed
abstract class GenericSmartTvDeviceDtos
    implements _$GenericSmartTvDeviceDtos, DeviceEntityDtoAbstract {
  factory GenericSmartTvDeviceDtos({
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
    required String? smartTvSwitchState,
    required String? entityTypes,
    required String? compUuid,
    required String? deviceVendor,
    required String? powerConsumption,
    required String? openUrl,
    required String? pausePlayState,
    required String? skip,
    required String? volume,
    String? deviceDtoClass,
    String? stateMassage
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
    ,
  }) = _GenericSmartTvDeviceDtos;

  GenericSmartTvDeviceDtos._();

  factory GenericSmartTvDeviceDtos.fromDomain(
    GenericSmartTvDE genericSmartTvDE,
  ) {
    return GenericSmartTvDeviceDtos(
      deviceDtoClass: (GenericSmartTvDeviceDtos).toString(),
      id: genericSmartTvDE.uniqueId.getOrCrash(),
      vendorUniqueId: genericSmartTvDE.vendorUniqueId.getOrCrash(),
      cbjEntityName: genericSmartTvDE.cbjEntityName.getOrCrash(),
      entityOriginalName: genericSmartTvDE.entityOriginalName.getOrCrash(),
      deviceOriginalName: genericSmartTvDE.deviceOriginalName.getOrCrash(),
      entityStateGRPC: genericSmartTvDE.entityStateGRPC.getOrCrash(),
      stateMassage: genericSmartTvDE.stateMassage.getOrCrash(),
      senderDeviceOs: genericSmartTvDE.senderDeviceOs.getOrCrash(),
      senderDeviceModel: genericSmartTvDE.senderDeviceModel.getOrCrash(),
      senderId: genericSmartTvDE.senderId.getOrCrash(),
      smartTvSwitchState: genericSmartTvDE.smartTvSwitchState!.getOrCrash(),
      entityTypes: genericSmartTvDE.entityTypes.getOrCrash(),
      compUuid: genericSmartTvDE.compUuid.getOrCrash(),
      deviceVendor: genericSmartTvDE.deviceVendor.getOrCrash(),
      powerConsumption: genericSmartTvDE.powerConsumption.getOrCrash(),

      openUrl: genericSmartTvDE.openUrl?.getOrCrash(),
      pausePlayState: genericSmartTvDE.pausePlayState?.getOrCrash(),
      skip: genericSmartTvDE.skip?.getOrCrash(),
      volume: genericSmartTvDE.volume?.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericSmartTvDeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericSmartTvDeviceDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (GenericSmartTvDeviceDtos).toString();

  @override
  DeviceEntityAbstract toDomain() {
    return GenericSmartTvDE(
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
      smartTvSwitchState: GenericSmartTvSwitchState(smartTvSwitchState),
      openUrl: openUrl == null ? null : GenericSmartTvOpenUrl(openUrl),
      pausePlayState: pausePlayState == null
          ? null
          : GenericSmartTvPausePlayState(pausePlayState),
      skip: skip == null ? null : GenericSmartTvSkipBackOrForward(skip),
      volume: volume == null ? null : GenericSmartTvVolume(volume),
      powerConsumption: DevicePowerConsumption(powerConsumption),
    );
  }
}
