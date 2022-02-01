import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

abstract class DeviceEntityAbstract {
  DeviceEntityAbstract({
    required this.uniqueId,
    required this.vendorUniqueId,
    required this.deviceVendor,
    required this.deviceTypes,
    required this.defaultName,
    required this.stateMassage,
    required this.senderDeviceOs,
    required this.senderDeviceModel,
    required this.senderId,
    required this.compUuid,
    required this.deviceStateGRPC,
  });

  /// The unique id that CyBear Jinni Hub gave the device
  CoreUniqueId uniqueId;

  /// The unique id that each company gave their device
  VendorUniqueId vendorUniqueId;

  /// The default name of the GenericLight
  DeviceDefaultName defaultName;

  /// Did the massage arrived or was it just sent.
  /// Will be 'set' (need change) or 'ack' for acknowledge
  DeviceState deviceStateGRPC;

  /// If state didn't change the error description will be found here.
  DeviceStateMassage stateMassage;

  /// Sender GenericLight os type, example: android, iphone, browser
  DeviceSenderDeviceOs senderDeviceOs;

  /// The sender GenericLight model; example: onePlus 3T
  DeviceSenderDeviceModel senderDeviceModel;

  /// Last GenericLight sender id that activated the action
  DeviceSenderId senderId;

  /// The smart GenericLight type
  DeviceType deviceTypes;

  /// The smart GenericLight type
  DeviceVendor deviceVendor;

  /// Unique id of the computer that the GenericLight located in
  DeviceCompUuid compUuid;

  String getDeviceId();

  /// Copy with device state to waiting or ack
  DeviceEntityAbstract copyWithDeviceState(DeviceStateGRPC deviceStateGRPC) {
    return this;
  }

  /// Copy with device action
  DeviceEntityAbstract copyWithDeviceAction(DeviceActions deviceActions) {
    return this;
  }

  /// Copy with stateMassage
  DeviceEntityAbstract copyWithStateMassage(String stateMassage) {
    return this;
  }

  /// Copy with senderDeviceOs
  DeviceEntityAbstract copyWithSenderDeviceOs(String senderDeviceOs) {
    return this;
  }

  /// Copy with deviceSenderDeviceModel
  DeviceEntityAbstract copyWithDeviceSenderDeviceModel(
    String deviceSenderDeviceModel,
  ) {
    return this;
  }

  /// Copy with currentUserId
  DeviceEntityAbstract copyWithSenderId(String userId) {
    return this;
  }

  DeviceEntityDtoAbstract toInfrastructure() {
    return DeviceEntityDtoAbstract();
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> executeDeviceAction({
    required DeviceEntityAbstract newEntity,
  });

  /// Return a list of all valid actions for this device
  List<String> getAllValidActions();
}

class DeviceEntityNotAbstract extends DeviceEntityAbstract {
  DeviceEntityNotAbstract()
      : super(
          uniqueId: CoreUniqueId(),
          vendorUniqueId: VendorUniqueId(),
          deviceVendor: DeviceVendor(
            VendorsAndServices.vendorsAndServicesNotSupported.toString(),
          ),
          deviceStateGRPC: DeviceState(DeviceTypes.typeNotSupported.toString()),
          compUuid: DeviceCompUuid(const Uuid().v1()),
          defaultName: DeviceDefaultName('No Name'),
          deviceTypes: DeviceType(DeviceTypes.light.toString()),
          senderDeviceModel: DeviceSenderDeviceModel('a'),
          senderDeviceOs: DeviceSenderDeviceOs('b'),
          senderId: DeviceSenderId(),
          stateMassage: DeviceStateMassage('go'),
        );

  @override
  DeviceEntityDtoAbstract toInfrastructure() {
    return DeviceEntityDtoAbstract();
  }

  @override
  String getDeviceId() {
    throw UnimplementedError();
  }

  /// Return a list of all valid actions for this device
  @override
  List<String> getAllValidActions() {
    return [];
  }

  @override
  Future<Either<CoreFailure, Unit>> executeDeviceAction({
    required DeviceEntityAbstract newEntity,
  }) {
    // TODO: implement executeDeviceAction
    throw UnimplementedError();
  }
}

//
// part 'device_entity_abstract.freezed.dart';
//
// /// Abstract smart device that exist inside a computer, the implementations will
// /// be actual device like blinds lights and more
// @freezed
// abstract class DeviceEntityAbstract implements _$DeviceEntityAbstract {
//   /// All public field of device entity
//   const factory DeviceEntityAbstract({
//     /// The smart device id
//     required DeviceUniqueId? id,
//
//     /// The default name of the device
//     required DeviceDefaultName? defaultName,
//   }) = _DeviceEntityAbstract;
//
//   const DeviceEntityAbstract._();
//
//   /// Empty instance of GenericLightDE
//   factory DeviceEntityAbstract.empty() => DeviceEntityAbstract(
//         id: DeviceUniqueId(),
//         defaultName: DeviceDefaultName(''),
//       );
//
//   /// Will return failure if any of the fields failed or return unit if fields
//   /// have legit values
//   Option<DevicesFailure<dynamic>> get failureOption {
//     return defaultName!.value.fold((f) => some(f), (_) => none());
//     //
//     // return body.failureOrUnit
//     //     .andThen(todos.failureOrUnit)
//     //     .andThen(
//     //       todos
//     //           .getOrCrash()
//     //           // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
//     //           .map((todoItem) => todoItem.failureOption)
//     //           .filter((o) => o.isSome())
//     //           // If we can't get the 0th element, the list is empty. In such a case, it's valid.
//     //           .getOrElse(0, (_) => none())
//     //           .fold(() => right(unit), (f) => left(f)),
//     //     )
//     //     .fold((f) => some(f), (_) => none());
//   }
// }
