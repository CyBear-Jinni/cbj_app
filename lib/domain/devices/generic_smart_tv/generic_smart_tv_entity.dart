import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_smart_tv_device/generic_smart_tv_device_dtos.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericSmartTv that exist inside a computer, the
/// implementations will be actual GenericSmartTv like blinds smartTvs and more
class GenericSmartTvDE extends DeviceEntityAbstract {
  /// All public field of GenericSmartTv entity
  GenericSmartTvDE({
    required super.uniqueId,
    required super.vendorUniqueId,
    required super.deviceVendor,
    required super.defaultName,
    required super.entityStateGRPC,
    required super.stateMassage,
    required super.senderDeviceOs,
    required super.senderDeviceModel,
    required super.senderId,
    required super.compUuid,
    required this.smartTvSwitchState,
    this.openUrl,
    this.pausePlayState,
    this.skip,
    this.volume,
    DevicePowerConsumption? powerConsumption,
  }) : super(
          entityTypes: DeviceType(DeviceTypes.smartTV.toString()),
        );

  /// Empty instance of GenericSmartTvEntity
  factory GenericSmartTvDE.empty() => GenericSmartTvDE(
        uniqueId: CoreUniqueId(),
        vendorUniqueId: VendorUniqueId(),
        defaultName: DeviceDefaultName(''),
        entityStateGRPC: EntityState(''),
        senderDeviceOs: DeviceSenderDeviceOs(''),
        senderDeviceModel: DeviceSenderDeviceModel(''),
        stateMassage: DeviceStateMassage(''),
        senderId: DeviceSenderId(),
        deviceVendor: DeviceVendor(''),
        compUuid: DeviceCompUuid(''),
        powerConsumption: DevicePowerConsumption(''),
        smartTvSwitchState:
            GenericSmartTvSwitchState(DeviceActions.off.toString()),
      );

  /// State of the smartTv on/off
  GenericSmartTvSwitchState? smartTvSwitchState;
  GenericSmartTvOpenUrl? openUrl;
  GenericSmartTvPausePlayState? pausePlayState;
  GenericSmartTvSkipBackOrForward? skip;
  GenericSmartTvVolume? volume;

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
    return GenericSmartTvSwitchState.smartTvValidActions();
  }

  @override
  DeviceEntityDtoAbstract toInfrastructure() {
    return GenericSmartTvDeviceDtos(
      deviceDtoClass: (GenericSmartTvDeviceDtos).toString(),
      id: uniqueId.getOrCrash(),
      vendorUniqueId: vendorUniqueId.getOrCrash(),
      defaultName: defaultName.getOrCrash(),
      entityStateGRPC: entityStateGRPC.getOrCrash(),
      stateMassage: stateMassage.getOrCrash(),
      senderDeviceOs: senderDeviceOs.getOrCrash(),
      senderDeviceModel: senderDeviceModel.getOrCrash(),
      senderId: senderId.getOrCrash(),
      entityTypes: entityTypes.getOrCrash(),
      compUuid: compUuid.getOrCrash(),
      smartTvSwitchState: smartTvSwitchState!.getOrCrash(),
      deviceVendor: deviceVendor.getOrCrash(),
      openUrl: openUrl?.getOrCrash(),
      pausePlayState: pausePlayState?.getOrCrash(),
      skip: skip?.getOrCrash(),
      volume: volume?.getOrCrash(),
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
  Future<Either<CoreFailure, Unit>> turnOnSmartTv() async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> turnOffSmartTv() async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  @override
  bool replaceActionIfExist(String action) {
    if (GenericSmartTvSwitchState.smartTvValidActions().contains(action)) {
      smartTvSwitchState = GenericSmartTvSwitchState(action);
      return true;
    }
    return false;
  }

  @override
  List<String> getListOfPropertiesToChange() {
    return [
      'smartTvSwitchState',
      'openUrl',
      'skip',
      'volume',
    ];
  }
}
