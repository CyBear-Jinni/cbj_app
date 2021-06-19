import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_entity.freezed.dart';

/// Abstract smart device that exist inside a computer, the implementations will
/// be actual device like blinds lights and more
@freezed
abstract class DeviceEntity implements _$DeviceEntity {
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
    required DeviceState? state,

    /// If state didn't change the error description will be found here.
    DeviceStateMassage? stateMassage,

    /// Sender device os type, example: android, iphone, browser
    required DeviceSenderDeviceOs? senderDeviceOs,

    /// The sender device model, example: onePlus 3T
    required DeviceSenderDeviceModel? senderDeviceModel,

    /// Last device sender id that activated the action
    required DeviceSenderId? senderId,

    /// What action to execute
    required DeviceAction? action,

    /// The smart device type
    required DeviceType? type,

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
        state: DeviceState(''),
        senderDeviceOs: DeviceSenderDeviceOs(''),
        senderDeviceModel: DeviceSenderDeviceModel(''),
        stateMassage: DeviceStateMassage(''),
        senderId: DeviceSenderId(),
        action: DeviceAction(''),
        type: DeviceType(''),
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
}
