import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_dimmable_light_device/generic_dimmable_light_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_dimmable_light_device/generic_dimmable_light_device_dtos.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericLightWithBrightness that exist inside a computer, the
/// implementations will be actual GenericLightWithBrightness like blinds lights and more
class GenericDimmableLightDE extends DeviceEntityAbstract {
  /// All public field of GenericLightWithBrightness entity
  GenericDimmableLightDE({
    required super.uniqueId,
    required super.entityUniqueId,
    required super.deviceVendor,
    required super.cbjEntityName,
    required super.entityOriginalName,
    required super.deviceOriginalName,
    required super.stateMassage,
    required super.senderDeviceOs,
    required super.senderDeviceModel,
    required super.senderId,
    required super.compUuid,
    required super.entityStateGRPC,
    required super.powerConsumption,
    required super.deviceUniqueId,
    required super.devicePort,
    required super.deviceLastKnownIp,
    required super.deviceHostName,
    required super.deviceMdns,
    required super.devicesMacAddress,
    required super.entityKey,
    required super.requestTimeStamp,
    required super.lastResponseFromDeviceTimeStamp,
    required super.deviceCbjUniqueId,
    required this.lightSwitchState,
    required this.lightBrightness,
  }) : super(
          entityTypes: EntityType(EntityTypes.dimmableLight.toString()),
        );

  /// Empty instance of GenericLightWithBrightnessEntity
  factory GenericDimmableLightDE.empty() => GenericDimmableLightDE(
        uniqueId: CoreUniqueId(),
        entityUniqueId: EntityUniqueId(''),
        cbjEntityName: CbjEntityName(''),
        entityOriginalName: EntityOriginalName(''),
        deviceOriginalName: DeviceOriginalName(''),
        entityStateGRPC: EntityState(''),
        senderDeviceOs: DeviceSenderDeviceOs(''),
        senderDeviceModel: DeviceSenderDeviceModel(''),
        stateMassage: DeviceStateMassage(''),
        senderId: DeviceSenderId(),
        deviceVendor: DeviceVendor(''),
        deviceUniqueId: DeviceUniqueId(''),
        devicePort: DevicePort(''),
        deviceLastKnownIp: DeviceLastKnownIp(''),
        deviceHostName: DeviceHostName(''),
        deviceMdns: DeviceMdns(''),
        compUuid: DeviceCompUuid(''),
        powerConsumption: DevicePowerConsumption(''),
        devicesMacAddress: DevicesMacAddress(''),
        entityKey: EntityKey(''),
        requestTimeStamp: RequestTimeStamp(''),
        lastResponseFromDeviceTimeStamp: LastResponseFromDeviceTimeStamp(''),
        deviceCbjUniqueId: CoreUniqueId(),
        lightSwitchState:
            GenericDimmableLightSwitchState(EntityActions.off.toString()),
        lightBrightness: GenericDimmableLightBrightness(''),
      );

  /// State of the light on/off
  GenericDimmableLightSwitchState? lightSwitchState;

  /// Brightness 0-100%
  GenericDimmableLightBrightness lightBrightness;

  int sendNewBrightnessEachMiliseconds = 200;
  bool doesWaitingToSendBrightnessRequest = false;

  //
  // /// Will return failure if any of the fields failed or return unit if fields
  // /// have legit values
  Option<CoreFailure<dynamic>> get failureOption =>
      cbjEntityName.value.fold((f) => some(f), (_) => none());
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
    return GenericDimmableLightSwitchState.lightValidActions();
  }

  @override
  DeviceEntityDtoAbstract toInfrastructure() {
    return GenericDimmableLightDeviceDtos(
      deviceDtoClass: (GenericDimmableLightDeviceDtos).toString(),
      id: uniqueId.getOrCrash(),
      entityUniqueId: entityUniqueId.getOrCrash(),
      cbjEntityName: cbjEntityName.getOrCrash(),
      entityOriginalName: entityOriginalName.getOrCrash(),
      deviceOriginalName: deviceOriginalName.getOrCrash(),
      entityStateGRPC: entityStateGRPC.getOrCrash(),
      stateMassage: stateMassage.getOrCrash(),
      senderDeviceOs: senderDeviceOs.getOrCrash(),
      senderDeviceModel: senderDeviceModel.getOrCrash(),
      senderId: senderId.getOrCrash(),
      entityTypes: entityTypes.getOrCrash(),
      compUuid: compUuid.getOrCrash(),
      deviceVendor: deviceVendor.getOrCrash(),
      powerConsumption: powerConsumption.getOrCrash(),
      deviceUniqueId: deviceUniqueId.getOrCrash(),
      devicePort: devicePort.getOrCrash(),
      deviceLastKnownIp: deviceLastKnownIp.getOrCrash(),
      deviceHostName: deviceHostName.getOrCrash(),
      deviceMdns: deviceMdns.getOrCrash(),
      devicesMacAddress: devicesMacAddress.getOrCrash(),
      entityKey: entityKey.getOrCrash(),
      requestTimeStamp: requestTimeStamp.getOrCrash(),
      lastResponseFromDeviceTimeStamp:
          lastResponseFromDeviceTimeStamp.getOrCrash(),
      deviceCbjUniqueId: deviceCbjUniqueId.getOrCrash(),
      lightSwitchState: lightSwitchState!.getOrCrash(),
      lightBrightness: lightBrightness.getOrCrash(),
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
  Future<Either<CoreFailure, Unit>> turnOnLight() async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> turnOffLight() async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> setBrightness(String brightness) async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  @override
  bool replaceActionIfExist(String action) {
    if (GenericDimmableLightSwitchState.lightValidActions().contains(action)) {
      lightSwitchState = GenericDimmableLightSwitchState(action);
      return true;
    }
    return false;
  }

  @override
  List<String> getListOfPropertiesToChange() {
    return [
      'lightSwitchState',
    ];
  }
}
