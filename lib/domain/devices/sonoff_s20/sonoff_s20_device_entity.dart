import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_failures.dart';
import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_value_objects.dart';
import 'package:cybear_jinni/infrastructure/devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/devices/sonoff_s20/sonoff_s20_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sonoff_s20_device_entity.freezed.dart';

/// Abstract smart sonoffS20 that exist inside a computer, the implementations will
/// be actual sonoffS20 like blinds lights and more
@freezed
abstract class SonoffS20DE implements _$SonoffS20DE, DeviceEntityAbstract {
  /// All public field of sonoffS20 entity
  const factory SonoffS20DE({
    /// The smart sonoffS20 id
    required SonoffS20UniqueId? id,

    /// The default name of the sonoffS20
    required SonoffS20DefaultName? defaultName,

    /// Room id that the smart sonoffS20 located in.
    required SonoffS20UniqueId? roomId,

    /// Room name that the smart sonoffS20 located in.
    required SonoffS20RoomName? roomName,

    /// Did the massage arrived or was it just sent.
    /// Will be 'set' (need change) or 'ack' for acknowledge
    required SonoffS20State? deviceStateGRPC,

    /// If state didn't change the error description will be found here.
    SonoffS20StateMassage? stateMassage,

    /// Sender SonoffS20 os type, example: android, iphone, browser
    required SonoffS20SenderDeviceOs? senderDeviceOs,

    /// The sender SonoffS20 model, example: onePlus 3T
    required SonoffS20SenderDeviceModel? senderDeviceModel,

    /// Last SonoffS20 sender id that activated the action
    required SonoffS20SenderId? senderId,

    /// What action to execute
    required SonoffS20Action? deviceActions,

    /// The smart sonoffS20 type
    required SonoffS20Type? deviceTypes,

    /// Unique id of the computer that the sonoffS20s located in
    required SonoffS20CompUuid? compUuid,

    /// Last known Ip of the computer that the sonoffS20 located in
    SonoffS20LastKnownIp? lastKnownIp,

    /// SonoffS20 power consumption in watts
    SonoffS20PowerConsumption? powerConsumption,

    /// SonoffS20 mdns name
    SonoffS20MdnsName? deviceMdnsName,

    /// SonoffS20 second WiFi
    SonoffS20SecondWiFiName? deviceSecondWiFi,
  }) = _SonoffS20DE;

  const SonoffS20DE._();

  /// Empty instance of SonoffS20Entity
  factory SonoffS20DE.empty() => SonoffS20DE(
        id: SonoffS20UniqueId(),
        defaultName: SonoffS20DefaultName(''),
        roomId: SonoffS20UniqueId(),
        roomName: SonoffS20RoomName(''),
        deviceStateGRPC: SonoffS20State(''),
        senderDeviceOs: SonoffS20SenderDeviceOs(''),
        senderDeviceModel: SonoffS20SenderDeviceModel(''),
        stateMassage: SonoffS20StateMassage(''),
        senderId: SonoffS20SenderId(),
        deviceActions: SonoffS20Action(''),
        deviceTypes: SonoffS20Type(''),
        compUuid: SonoffS20CompUuid(''),
        lastKnownIp: SonoffS20LastKnownIp(''),
      );

  /// Will return failure if any of the fields failed or return unit if fields
  /// have legit values
  Option<SonoffS20Failure<dynamic>> get failureOption {
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
  DeviceEntityDtoAbstract toInfrastructure() {
    return SonoffS20Dtos(
      deviceDtoClass: (SonoffS20Dtos).toString(),
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
