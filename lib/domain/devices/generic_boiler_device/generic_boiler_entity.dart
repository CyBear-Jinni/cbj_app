import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_boiler_device/generic_boiler_device_dtos.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericBoiler that exist inside a computer, the
/// implementations will be actual GenericBoiler like boiler boilers and more
class GenericBoilerDE extends DeviceEntityAbstract {
  /// All public field of GenericBoiler entity
  GenericBoilerDE({
    required CoreUniqueId uniqueId,
    required CoreUniqueId roomId,
    required DeviceVendor deviceVendor,
    required DeviceDefaultName defaultName,
    required DeviceRoomName roomName,
    required DeviceState deviceStateGRPC,
    required DeviceStateMassage stateMassage,
    required DeviceSenderDeviceOs senderDeviceOs,
    required DeviceSenderDeviceModel senderDeviceModel,
    required DeviceSenderId senderId,
    required DeviceCompUuid compUuid,
    DevicePowerConsumption? powerConsumption,
    required this.boilerSwitchState,
  }) : super(
          uniqueId: uniqueId,
          defaultName: defaultName,
          roomId: roomId,
          deviceTypes: DeviceType(DeviceTypes.boiler.toString()),
          deviceVendor: deviceVendor,
          deviceStateGRPC: deviceStateGRPC,
          compUuid: compUuid,
          roomName: roomName,
          senderDeviceModel: senderDeviceModel,
          senderDeviceOs: senderDeviceOs,
          senderId: senderId,
          stateMassage: stateMassage,
        );

  /// State of the boiler on/off
  GenericBoilerSwitchState? boilerSwitchState;

  /// Empty instance of GenericBoilerEntity
  factory GenericBoilerDE.empty() => GenericBoilerDE(
      uniqueId: CoreUniqueId(),
      defaultName: DeviceDefaultName(''),
      roomId: CoreUniqueId(),
      roomName: DeviceRoomName(''),
      deviceStateGRPC: DeviceState(''),
      senderDeviceOs: DeviceSenderDeviceOs(''),
      senderDeviceModel: DeviceSenderDeviceModel(''),
      stateMassage: DeviceStateMassage(''),
      senderId: DeviceSenderId(),
      deviceVendor: DeviceVendor(''),
      compUuid: DeviceCompUuid(''),
      powerConsumption: DevicePowerConsumption(''),
      boilerSwitchState:
          GenericBoilerSwitchState(DeviceActions.off.toString()));

  //
  // /// Will return failure if any of the fields failed or return unit if fields
  // /// have legit values
  Option<CoreFailure<dynamic>> get failureOption =>
      defaultName.value.fold((f) => some(f), (_) => none());
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
  // }

  @override
  String getDeviceId() {
    return uniqueId.getOrCrash()!;
  }

  @override
  DeviceEntityDtoAbstract toInfrastructure() {
    return GenericBoilerDeviceDtos(
      deviceDtoClass: (GenericBoilerDeviceDtos).toString(),
      id: uniqueId.getOrCrash(),
      defaultName: defaultName.getOrCrash(),
      roomId: roomId.getOrCrash(),
      roomName: roomName.getOrCrash(),
      deviceStateGRPC: deviceStateGRPC.getOrCrash(),
      stateMassage: stateMassage.getOrCrash(),
      senderDeviceOs: senderDeviceOs.getOrCrash(),
      senderDeviceModel: senderDeviceModel.getOrCrash(),
      senderId: senderId.getOrCrash(),
      deviceTypes: deviceTypes.getOrCrash(),
      compUuid: compUuid.getOrCrash(),
      boilerSwitchState: boilerSwitchState!.getOrCrash(),
      deviceVendor: deviceVendor.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> executeDeviceAction(
      DeviceEntityAbstract newEntity) async {
    print('Please override this method in the non generic implementation');
    return left(const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist'));
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> turnOnBoiler() async {
    print('Please override this method in the non generic implementation');
    return left(const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist'));
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> turnOffBoiler() async {
    print('Please override this method in the non generic implementation');
    return left(const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist'));
  }
}
