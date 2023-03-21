import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_tv/generic_smart_tv_value_objects.dart';
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
    required String entityUniqueId,
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
    required String? deviceUniqueId,
    required String? devicePort,
    required String? deviceLastKnownIp,
    required String? deviceHostName,
    required String? deviceMdns,
    required String? devicesMacAddress,
    required String? entityKey,
    required String? requestTimeStamp,
    required String? lastResponseFromDeviceTimeStamp,
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
      entityUniqueId: genericSmartTvDE.entityUniqueId.getOrCrash(),
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

      deviceUniqueId: genericSmartTvDE.deviceUniqueId.getOrCrash(),
      devicePort: genericSmartTvDE.devicePort.getOrCrash(),
      deviceLastKnownIp: genericSmartTvDE.deviceLastKnownIp.getOrCrash(),
      deviceHostName: genericSmartTvDE.deviceHostName.getOrCrash(),
      deviceMdns: genericSmartTvDE.deviceMdns.getOrCrash(),
      devicesMacAddress: genericSmartTvDE.devicesMacAddress.getOrCrash(),
      entityKey: genericSmartTvDE.entityKey.getOrCrash(),
      requestTimeStamp: genericSmartTvDE.requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          genericSmartTvDE.lastResponseFromDeviceTimeStamp.getOrCrash(),

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
      smartTvSwitchState: GenericSmartTvSwitchState(smartTvSwitchState),
      openUrl: openUrl == null ? null : GenericSmartTvOpenUrl(openUrl),
      pausePlayState: pausePlayState == null
          ? null
          : GenericSmartTvPausePlayState(pausePlayState),
      skip: skip == null ? null : GenericSmartTvSkipBackOrForward(skip),
      volume: volume == null ? null : GenericSmartTvVolume(volume),
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
