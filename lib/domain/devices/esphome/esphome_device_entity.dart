import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/esphome/esphome_failures.dart';
import 'package:cybear_jinni/domain/devices/esphome/esphome_value_objects.dart';
import 'package:cybear_jinni/infrastructure/devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/devices/esphome/esphome_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'esphome_device_entity.freezed.dart';

/// Abstract smart ESPHome that exist inside a computer, the implementations
/// will be actual ESPHome like blinds lights and more
@freezed
abstract class EspHomeDE implements _$EspHomeDE, DeviceEntityAbstract {
  /// All public field of ESPHome entity
  const factory EspHomeDE({
    /// The smart ESPHome id
    required EspHomeUniqueId? id,

    /// The default name of the ESPHome
    required EspHomeDefaultName? defaultName,

    /// Room id that the smart ESPHome located in.
    required EspHomeUniqueId? roomId,

    /// Room name that the smart ESPHome located in.
    required EspHomeRoomName? roomName,

    /// Did the massage arrived or was it just sent.
    /// Will be 'set' (need change) or 'ack' for acknowledge
    required EspHomeState? deviceStateGRPC,

    /// If state didn't change the error description will be found here.
    EspHomeStateMassage? stateMassage,

    /// Sender ESPHome os type, example: android, iphone, browser
    required EspHomeSenderDeviceOs? senderDeviceOs,

    /// The sender ESPHome model, example: onePlus 3T
    required EspHomeSenderDeviceModel? senderDeviceModel,

    /// Last ESPHome sender id that activated the action
    required EspHomeSenderId? senderId,

    /// What action to execute
    required EspHomeAction? deviceActions,

    /// The smart ESPHome type
    required EspHomeType? deviceTypes,

    /// Unique id of the computer that the ESPHome located in
    required EspHomeCompUuid? compUuid,

    /// Last known Ip of the computer that the ESPHome located in
    EspHomeLastKnownIp? lastKnownIp,

    /// ESPHome power consumption in watts
    EspHomePowerConsumption? powerConsumption,

    /// ESPHome mdns name
    EspHomeMdnsName? deviceMdnsName,

    /// ESPHome second WiFi
    EspHomeSecondWiFiName? deviceSecondWiFi,
  }) = _EspHomeDE;

  const EspHomeDE._();

  /// Empty instance of ESPHomeEntity
  factory EspHomeDE.empty() => EspHomeDE(
        id: EspHomeUniqueId(),
        defaultName: EspHomeDefaultName(''),
        roomId: EspHomeUniqueId(),
        roomName: EspHomeRoomName(''),
        deviceStateGRPC: EspHomeState(''),
        senderDeviceOs: EspHomeSenderDeviceOs(''),
        senderDeviceModel: EspHomeSenderDeviceModel(''),
        stateMassage: EspHomeStateMassage(''),
        senderId: EspHomeSenderId(),
        deviceActions: EspHomeAction(''),
        deviceTypes: EspHomeType(''),
        compUuid: EspHomeCompUuid(''),
        lastKnownIp: EspHomeLastKnownIp(''),
      );

  /// Will return failure if any of the fields failed or return unit if fields
  /// have legit values
  Option<EspHomeFailure<dynamic>> get failureOption {
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
    return EspHomeDtos(
      deviceDtoClass: (EspHomeDtos).toString(),
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
