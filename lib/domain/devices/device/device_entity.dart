import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/devices/device/device_dtos.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_entity.freezed.dart';

/// Abstract smart device that exist inside a computer, the implementations will
/// be actual device like blinds lights and more
@freezed
abstract class DeviceEntity implements _$DeviceEntity, DeviceEntityAbstract {
  /// All public field of device entity
  const factory DeviceEntity({
    /// The smart device id
    required DeviceUniqueId? id,

    /// The default name of the device
    required DeviceDefaultName? defaultName,

    /// Room id that the smart device located in.
    required DeviceUniqueId? roomId,

    /// Room name that the smart device located in.
    required DeviceRoomName? roomName,

    /// Did the massage arrived or was it just sent.
    /// Will be 'set' (need change) or 'ack' for acknowledge
    required DeviceState? deviceStateGRPC,

    /// If state didn't change the error description will be found here.
    DeviceStateMassage? stateMassage,

    /// Sender device os type, example: android, iphone, browser
    required DeviceSenderDeviceOs? senderDeviceOs,

    /// The sender device model, example: onePlus 3T
    required DeviceSenderDeviceModel? senderDeviceModel,

    /// Last device sender id that activated the action
    required DeviceSenderId? senderId,

    /// What action to execute
    required DeviceAction? deviceActions,

    /// The smart device type
    required DeviceType? deviceTypes,

    /// Unique id of the computer that the devices located in
    required DeviceCompUuid? compUuid,

    /// Last known Ip of the computer that the device located in
    DeviceLastKnownIp? lastKnownIp,

    /// Device power consumption in watts
    DevicePowerConsumption? powerConsumption,

    /// Device mdns name
    DeviceMdnsName? deviceMdnsName,

    /// Device second WiFi
    DeviceSecondWiFiName? deviceSecondWiFi,
  }) = _DeviceEnitie;

  const DeviceEntity._();

  /// Empty instance of DeviceEntity
  factory DeviceEntity.empty() => DeviceEntity(
        id: DeviceUniqueId(),
        defaultName: DeviceDefaultName(''),
        roomId: DeviceUniqueId(),
        roomName: DeviceRoomName(''),
        deviceStateGRPC: DeviceState(''),
        senderDeviceOs: DeviceSenderDeviceOs(''),
        senderDeviceModel: DeviceSenderDeviceModel(''),
        stateMassage: DeviceStateMassage(''),
        senderId: DeviceSenderId(),
        deviceActions: DeviceAction(''),
        deviceTypes: DeviceType(''),
        compUuid: DeviceCompUuid(''),
        lastKnownIp: DeviceLastKnownIp(''),
      );

  /// Will return failure if any of the fields failed or return unit if fields
  /// have legit values
  Option<DevicesFailure<dynamic>> get failureOption {
    return defaultName!.value.fold((f) => some(f), (_) => none());
    //
    // return body.failureOrUnit
    //     .andThen(todos.failureOrUnit)
    //     .andThen(
    //       todos
    //           .getOrCrash()
    //           // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
    //           .map((todoItem) => todoItem.failureOption)
    //           .filter((o) => o.isSome())
    //           // If we can't get the 0th element, the list is empty. In such a case, it's valid.
    //           .getOrElse(0, (_) => none())
    //           .fold(() => right(unit), (f) => left(f)),
    //     )
    //     .fold((f) => some(f), (_) => none());
  }

  @override
  String getDeviceId() {
    return this.id!.getOrCrash()!;
  }

  @override
  String getDeviceType() {
    return deviceTypes!.getOrCrash();
  }

  @override
  DeviceEntityAbstract copyWithDeviceState(DeviceStateGRPC deviceState) {
    return copyWith(
        deviceStateGRPC:
            DeviceState(EnumHelper.deviceStateToString(deviceState)));
  }

  @override
  DeviceEntityAbstract copyWithDeviceAction(DeviceActions deviceActions) {
    return copyWith(
        deviceActions:
            DeviceAction(EnumHelper.deviceActionToString(deviceActions)));
  }

  @override
  DeviceEntityAbstract copyWithStateMassage(String stateMassage) {
    return copyWith(stateMassage: DeviceStateMassage(stateMassage));
  }

  @override
  DeviceEntityAbstract copyWithSenderDeviceOs(String senderDeviceOs) {
    return copyWith(senderDeviceOs: DeviceSenderDeviceOs(senderDeviceOs));
  }

  @override
  DeviceEntityAbstract copyWithDeviceSenderDeviceModel(
      String deviceSenderDeviceModel) {
    return copyWith(
        senderDeviceModel: DeviceSenderDeviceModel(deviceSenderDeviceModel));
  }

  @override
  DeviceEntityAbstract copyWithSenderId(String userId) {
    return copyWith(senderId: DeviceSenderId.fromUniqueString(userId));
  }

  @override
  DeviceEntityDtoAbstract toInfrastructure() {
    print('DeviceDtos.fromDomain');
    return DeviceDtos(
      deviceDtoClass: (DeviceDtos).toString(),
      id: this.id!.getOrCrash(),
      defaultName: defaultName!.getOrCrash(),
      roomId: roomId!.getOrCrash(),
      roomName: roomName!.getOrCrash(),
      deviceStateGRPC: deviceStateGRPC!.getOrCrash(),
      stateMassage: stateMassage!.getOrCrash(),
      senderDeviceOs: senderDeviceOs!.getOrCrash(),
      senderDeviceModel: senderDeviceModel!.getOrCrash(),
      senderId: senderId!.getOrCrash(),
      deviceActions: deviceActions!.getOrCrash(),
      deviceTypes: deviceTypes!.getOrCrash(),
      compUuid: compUuid!.getOrCrash(),
      deviceSecondWiFi: deviceSecondWiFi!.getOrCrash(),
      deviceMdnsName: deviceMdnsName!.getOrCrash(),
      lastKnownIp: lastKnownIp!.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
}
