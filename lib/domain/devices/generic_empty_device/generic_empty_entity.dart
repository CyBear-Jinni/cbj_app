import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_empty_device/generic_empty_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_empty_device/generic_empty_device_dtos.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericEmpty that exist inside a computer, the
/// implementations will be actual GenericEmpty like blinds emptys and more
class GenericEmptyDE extends DeviceEntityAbstract {
  /// All public field of GenericEmpty entity
  GenericEmptyDE({
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
    required this.emptySwitchState,
    DevicePowerConsumption? powerConsumption,
  }) : super(
          deviceTypes: DeviceType(DeviceTypes.emptyDevice.toString()),
        );

  /// Empty instance of GenericEmptyEntity
  factory GenericEmptyDE.empty() => GenericEmptyDE(
        uniqueId: CoreUniqueId(),
        vendorUniqueId: VendorUniqueId(),
        defaultName: DeviceDefaultName('Empty device'),
        deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
        senderDeviceOs: DeviceSenderDeviceOs('Hub'),
        senderDeviceModel: DeviceSenderDeviceModel('Hub'),
        stateMassage: DeviceStateMassage('Test'),
        senderId: DeviceSenderId(),
        deviceVendor: DeviceVendor(
          VendorsAndServices.vendorsAndServicesNotSupported.toString(),
        ),
        compUuid: DeviceCompUuid('Test'),
        powerConsumption: DevicePowerConsumption('Test'),
        emptySwitchState: GenericEmptySwitchState(DeviceActions.off.toString()),
      );

  /// State of the empty on/off
  GenericEmptySwitchState? emptySwitchState;

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
    return GenericEmptySwitchState.emptyDeviceValidActions();
  }

  @override
  DeviceEntityDtoAbstract toInfrastructure() {
    return GenericEmptyDeviceDtos(
      deviceDtoClass: (GenericEmptyDeviceDtos).toString(),
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
      emptySwitchState: emptySwitchState!.getOrCrash(),
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
  Future<Either<CoreFailure, Unit>> turnOnEmpty() async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> turnOffEmpty() async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  @override
  bool replaceActionIfExist(String action) {
    if (GenericEmptySwitchState.emptyDeviceValidActions().contains(action)) {
      emptySwitchState = GenericEmptySwitchState(action);
      return true;
    }
    return false;
  }

  @override
  List<String> getListOfPropertiesToChange() {
    return [
      'emptySwitchState',
    ];
  }
}
