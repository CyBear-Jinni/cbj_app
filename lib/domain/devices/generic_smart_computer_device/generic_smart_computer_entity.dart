import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_computer_device/generic_smart_computer_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_smart_computer_device/generic_smart_computer_device_dtos.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericSmartComputer that exist inside a computer, the
/// implementations will be actual GenericSmartComputer like blinds smartComputers and more
class GenericSmartComputerDE extends DeviceEntityAbstract {
  /// All public field of GenericSmartComputer entity
  GenericSmartComputerDE({
    required super.uniqueId,
    required super.vendorUniqueId,
    required super.deviceVendor,
    required super.defaultName,
    required super.deviceStateGRPC,
    required super.stateMassage,
    required super.senderDeviceOs,
    required super.senderDeviceModel,
    required super.senderId,
    required super.compUuid,
    required this.smartComputerSuspendState,
    required this.smartComputerShutDownState,
    DevicePowerConsumption? powerConsumption,
  }) : super(
          deviceTypes: DeviceType(DeviceTypes.smartComputer.toString()),
        );

  /// Empty instance of GenericSmartComputerEntity
  factory GenericSmartComputerDE.empty() => GenericSmartComputerDE(
        uniqueId: CoreUniqueId(),
        vendorUniqueId: VendorUniqueId(),
        defaultName: DeviceDefaultName(''),
        deviceStateGRPC: DeviceState(''),
        senderDeviceOs: DeviceSenderDeviceOs(''),
        senderDeviceModel: DeviceSenderDeviceModel(''),
        stateMassage: DeviceStateMassage(''),
        senderId: DeviceSenderId(),
        deviceVendor: DeviceVendor(''),
        compUuid: DeviceCompUuid(''),
        powerConsumption: DevicePowerConsumption(''),
        smartComputerSuspendState: GenericSmartComputerSuspendState(
          DeviceActions.itIsFalse.toString(),
        ),
        smartComputerShutDownState: GenericSmartComputerShutdownState(
          DeviceActions.itIsFalse.toString(),
        ),
      );

  /// Suspend state smart computer
  GenericSmartComputerSuspendState? smartComputerSuspendState;

  /// Shut down state smart computer
  GenericSmartComputerShutdownState? smartComputerShutDownState;

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
    return uniqueId.getOrCrash();
  }

  /// Return a list of all valid actions for this device
  @override
  List<String> getAllValidActions() {
    return GenericSmartComputerSuspendState.smartComputerValidActions();
  }

  @override
  DeviceEntityDtoAbstract toInfrastructure() {
    return GenericSmartComputerDeviceDtos(
      deviceDtoClass: (GenericSmartComputerDeviceDtos).toString(),
      id: uniqueId.getOrCrash(),
      vendorUniqueId: vendorUniqueId.getOrCrash(),
      defaultName: defaultName.getOrCrash(),
      deviceStateGRPC: deviceStateGRPC.getOrCrash(),
      stateMassage: stateMassage.getOrCrash(),
      senderDeviceOs: senderDeviceOs.getOrCrash(),
      senderDeviceModel: senderDeviceModel.getOrCrash(),
      senderId: senderId.getOrCrash(),
      deviceTypes: deviceTypes.getOrCrash(),
      compUuid: compUuid.getOrCrash(),
      smartComputerSuspendState: smartComputerSuspendState!.getOrCrash(),
      smartComputerShutDownState: smartComputerShutDownState!.getOrCrash(),
      deviceVendor: deviceVendor.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  /// Please override the following methods
  @override
  Future<Either<CoreFailure, Unit>> executeDeviceAction({
    required DeviceEntityAbstract newEntity,
  }) async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> turnOnSmartComputer() async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> turnOffSmartComputer() async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  @override
  bool replaceActionIfExist(String action) {
    if (GenericSmartComputerSuspendState.smartComputerValidActions()
        .contains(action)) {
      smartComputerSuspendState = GenericSmartComputerSuspendState(action);
      return true;
    } else if (GenericSmartComputerShutdownState.smartComputerValidActions()
        .contains(action)) {
      smartComputerShutDownState = GenericSmartComputerShutdownState(action);
      return true;
    }
    return false;
  }

  @override
  List<String> getListOfPropertiesToChange() {
    return [
      'smartComputerSuspendState',
      'smartComputerShutDownState',
    ];
  }
}
