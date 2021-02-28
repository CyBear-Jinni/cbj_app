import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_entity.freezed.dart';

@freezed
abstract class DeviceEntity implements _$DeviceEntity {
  const DeviceEntity._();

  const factory DeviceEntity({
    /// The smart device id
    @required DeviceUniqueId id,

    /// The default name of the device
    @required DeviceDefaultName defaultName,

    /// Room id that the smart device located in.
    @required DeviceUniqueId roomId,

    /// Did the massage arrived or was it just sent.
    /// Currently will be 'set' (need change) or 'ack' for acknowledge
    /// (the action was reseved and executed correctly
    @required DeviceState state,

    /// If state didn't change the error discription will be found here.
    DeviceStateMassage stateMassage,

    /// Sender device os type, example: android, iphone, browser
    @required DeviceSenderDeviceOs senderDeviceOs,

    /// The sender device model, example: onePlues 3T
    @required DeviceSenderDeviceModel senderDeviceModel,

    /// Last device sender id that activated the action
    @required DeviceSenderId senderId,

    /// What action to execute
    @required DeviceAction action,

    /// The smart device type
    @required DeviceType type,
  }) = _DeviceEnitie;

  factory DeviceEntity.empty() => DeviceEntity(
        id: DeviceUniqueId(),
        defaultName: DeviceDefaultName(''),
        roomId: DeviceUniqueId(),
        state: DeviceState(''),
        senderDeviceOs: DeviceSenderDeviceOs(''),
        senderDeviceModel: DeviceSenderDeviceModel(''),
        stateMassage: DeviceStateMassage(''),
        senderId: DeviceSenderId(),
        action: DeviceAction(''),
        type: DeviceType(''),
      );

  Option<DevicesFailure<dynamic>> get failureOption {
    return defaultName.value.fold((f) => some(f), (_) => none());
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
