import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/generic_rgbw_light_device/generic_rgbw_light_device_dtos.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericLight that exist inside a computer, the
/// implementations will be actual GenericLight like blinds lights and more
class GenericRgbwLightDE extends DeviceEntityAbstract {
  /// All public field of GenericLight entity
  GenericRgbwLightDE({
    required CoreUniqueId uniqueId,
    required VendorUniqueId vendorUniqueId,
    required DeviceVendor deviceVendor,
    required DeviceDefaultName defaultName,
    required DeviceState deviceStateGRPC,
    required DeviceStateMassage stateMassage,
    required DeviceSenderDeviceOs senderDeviceOs,
    required DeviceSenderDeviceModel senderDeviceModel,
    required DeviceSenderId senderId,
    required DeviceCompUuid compUuid,
    required this.lightSwitchState,
    required this.lightColorTemperature,
    required this.lightColorAlpha,
    required this.lightColorHue,
    required this.lightColorSaturation,
    required this.lightColorValue,
    required this.lightBrightness,
    DevicePowerConsumption? powerConsumption,
  }) : super(
          uniqueId: uniqueId,
          vendorUniqueId: vendorUniqueId,
          defaultName: defaultName,
          deviceTypes: DeviceType(DeviceTypes.rgbwLights.toString()),
          deviceVendor: deviceVendor,
          deviceStateGRPC: deviceStateGRPC,
          compUuid: compUuid,
          senderDeviceModel: senderDeviceModel,
          senderDeviceOs: senderDeviceOs,
          senderId: senderId,
          stateMassage: stateMassage,
        );

  /// Empty instance of GenericLightEntity
  factory GenericRgbwLightDE.empty() => GenericRgbwLightDE(
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
        lightSwitchState:
            GenericRgbwLightSwitchState(DeviceActions.off.toString()),
        lightColorTemperature: GenericRgbwLightColorTemperature(''),
        lightBrightness: GenericRgbwLightBrightness(''),
        lightColorAlpha: GenericRgbwLightColorAlpha(''),
        lightColorHue: GenericRgbwLightColorHue(''),
        lightColorSaturation: GenericRgbwLightColorSaturation(''),
        lightColorValue: GenericRgbwLightColorValue(''),
      );

  /// State of the light on/off
  GenericRgbwLightSwitchState? lightSwitchState;

  /// Color temperature in int
  GenericRgbwLightColorTemperature lightColorTemperature;

  /// Color alpha in double
  GenericRgbwLightColorAlpha lightColorAlpha;

  /// Color hue in double
  GenericRgbwLightColorHue lightColorHue;

  /// Color saturation in double
  GenericRgbwLightColorSaturation lightColorSaturation;

  /// Color value in double
  GenericRgbwLightColorValue lightColorValue;

  /// Brightness 0-100%
  GenericRgbwLightBrightness lightBrightness;

  int sendNewTemperatureColorEachMiliseconds = 200;
  bool doesWaitingToSendTemperatureColorRequest = false;

  int sendNewHsvColorEachMiliseconds = 200;
  bool doesWaitingToSendHsvColorRequest = false;

  int sendNewBrightnessEachMiliseconds = 200;
  bool doesWaitingToSendBrightnessRequest = false;

  // /// Will return failure if any of the fields failed or return unit if fields
  // /// have legit values
  Option<CoreFailure<dynamic>> get failureOption =>
      defaultName.value.fold((f) => some(f), (_) => none());

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
    return GenericRgbwLightSwitchState.rgbwLightValidActions();
  }

  @override
  DeviceEntityDtoAbstract toInfrastructure() {
    return GenericRgbwLightDeviceDtos(
      deviceDtoClass: (GenericRgbwLightDeviceDtos).toString(),
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
      lightSwitchState: lightSwitchState!.getOrCrash(),
      deviceVendor: deviceVendor.getOrCrash(),
      lightColorTemperature: lightColorTemperature.getOrCrash(),
      lightBrightness: lightBrightness.getOrCrash(),
      lightColorAlpha: lightColorAlpha.getOrCrash(),
      lightColorHue: lightColorHue.getOrCrash(),
      lightColorSaturation: lightColorSaturation.getOrCrash(),
      lightColorValue: lightColorValue.getOrCrash(),
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

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> changeColorTemperature({
    required String lightColorTemperatureNewValue,
  }) async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }

  /// Please override the following methods
  Future<Either<CoreFailure, Unit>> changeColorHsv({
    required String lightColorAlphaNewValue,
    required String lightColorHueNewValue,
    required String lightColorSaturationNewValue,
    required String lightColorValueNewValue,
  }) async {
    logger.w('Please override this method in the non generic implementation');
    return left(
      const CoreFailure.actionExcecuter(
        failedValue: 'Action does not exist',
      ),
    );
  }
}
