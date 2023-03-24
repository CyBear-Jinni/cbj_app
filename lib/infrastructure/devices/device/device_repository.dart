import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_blinds_device/generic_blinds_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_boiler_device/generic_boiler_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_dimmable_light_device/generic_dimmable_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_dimmable_light_device/generic_dimmable_light_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_computer_device/generic_smart_computer_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_plug_device/generic_smart_plug_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_tv/generic_smart_tv_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_switch_device/generic_switch_value_objects.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/devices/device_helper.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_requests_routing.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/colors.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:multicast_dns/multicast_dns.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IDeviceRepository)
class DeviceRepository implements IDeviceRepository {
  // final DeviceRemoteService _deviceRemoteService;
  // final DeviceLocalService _deviceLocalService;
  HashMap<String, DeviceEntityAbstract> allDevices =
      HashMap<String, DeviceEntityAbstract>();

  // @override
  // void addOrUpdateFromApp(dynamic entity) {
  //   if (entity is RoomEntity) {
  //     _addOrUpdateRoom(entity);
  //   } else if (entity is DeviceEntityAbstract) {
  //     _addOrUpdateDevice(entity);
  //   } else {
  //     logger.w('Entity type to update ${entity.runtimeType} is not supported');
  //   }
  //   allResponseFromTheHubStreamController.sink
  //       .add(entity);
  // }

  @override
  void addOrUpdateDevice(DeviceEntityAbstract deviceEntity) {
    allDevices[deviceEntity.uniqueId.getOrCrash()] = deviceEntity;
    devicesResponseFromTheHubStreamController.sink
        .add(allDevices.values.toImmutableList());
  }

  @override
  void addOrUpdateDeviceAndStateToWaiting(DeviceEntityAbstract deviceEntity) {
    addOrUpdateDevice(
      deviceEntity.copyWithDeviceState(
        DeviceStateGRPC.waitingInComp,
      ),
    );
  }

  @override
  Future<void> initiateHubConnection() async {
    AppRequestsToHub.lisenToApp();
    HubRequestsToApp.lisenToApp();

    HubRequestRouting.navigateRequest();
  }

  @override
  Future<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      getAllDevices() async {
    try {
      return right(allDevices.values.toImmutableList());
    } catch (e) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        logger.w('Insufficient permission while getting all devices');
        return left(const DevicesFailure.insufficientPermission());
      } else {
        logger.e('Unexpected error while getting all devices');
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<dynamic, KtList>> watchAll() async* {
    yield* allResponseFromTheHubStreamController.map((event) => right(event));
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchAllDevices() async* {
    yield* devicesResponseFromTheHubStreamController.stream
        .map((event) => right(event));
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchLights() async* {
    // Using watchAll devices from server function and filtering out only the
    // Light device type
    yield* watchAllDevices().map(
      (event) => event.fold((l) => left(l), (r) {
        return right(
          r.toList().asList().where((element) {
            return element!.entityTypes.getOrCrash() ==
                    DeviceTypes.light.toString() ||
                element.entityTypes.getOrCrash() ==
                    DeviceTypes.dimmableLight.toString() ||
                element.entityTypes.getOrCrash() ==
                    DeviceTypes.rgbwLights.toString();
          }).toImmutableList(),
        );
      }),
    );
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchSwitches() async* {
    // Using watchAll devices from server function and filtering out only the
    // Switches device type
    yield* watchAllDevices().map(
      (event) => event.fold((l) => left(l), (r) {
        return right(
          r.toList().asList().where((element) {
            return element!.entityTypes.getOrCrash() ==
                DeviceTypes.switch_.toString();
          }).toImmutableList(),
        );
      }),
    );
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchSmartPlugs() async* {
    // Using watchAll devices from server function and filtering out only the
    // Smart Plugs device type
    yield* watchAllDevices().map(
      (event) => event.fold((l) => left(l), (r) {
        return right(
          r.toList().asList().where((element) {
            return element!.entityTypes.getOrCrash() ==
                DeviceTypes.smartPlug.toString();
          }).toImmutableList(),
        );
      }),
    );
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchSmartComputers() async* {
    // Using watchAll devices from server function and filtering out only the
    // Smart Computers device type
    yield* watchAllDevices().map(
      (event) => event.fold((l) => left(l), (r) {
        return right(
          r.toList().asList().where((element) {
            return element!.entityTypes.getOrCrash() ==
                DeviceTypes.smartComputer.toString();
          }).toImmutableList(),
        );
      }),
    );
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchBlinds() async* {
    // Using watchAll devices from server function and filtering out only the
    // Blinds device type
    yield* watchAllDevices().map(
      (event) => event.fold((l) => left(l), (r) {
        return right(
          r.toList().asList().where((element) {
            return element!.entityTypes.getOrCrash() ==
                DeviceTypes.blinds.toString();
          }).toImmutableList(),
        );
      }),
    );
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchBoilers() async* {
    // Using watchAll devices from server function and filtering out only the
    // Boilers device type
    yield* watchAllDevices().map(
      (event) => event.fold((l) => left(l), (r) {
        return right(
          r.toList().asList().where((element) {
            return element!.entityTypes.getOrCrash() ==
                DeviceTypes.boiler.toString();
          }).toImmutableList(),
        );
      }),
    );
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchSmartTv() async* {
    yield* watchAllDevices().map(
      (event) => event.fold((l) => left(l), (r) {
        return right(
          r.toList().asList().where((element) {
            return element!.entityTypes.getOrCrash() ==
                DeviceTypes.smartTV.toString();
          }).toImmutableList(),
        );
      }),
    );
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>
      watchPrinters() async* {
    yield* watchAllDevices().map(
      (event) => event.fold((l) => left(l), (r) {
        return right(
          r.toList().asList().where((element) {
            return element!.entityTypes.getOrCrash() ==
                DeviceTypes.printer.toString();
          }).toImmutableList(),
        );
      }),
    );
  }

  @override
  Stream<Either<DevicesFailure, KtList<DeviceEntityAbstract>>>
      watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }

  @override
  Future<Either<DevicesFailure, Unit>> create(
    DeviceEntityAbstract deviceEntity,
  ) async {
    try {
      String deviceModelString = 'No Model found';
      final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      if (Platform.isAndroid) {
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        logger.i(androidInfo.model);
        deviceModelString = androidInfo.model;
      } else if (Platform.isIOS) {
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        logger.i(iosInfo.utsname.machine);
        deviceModelString = iosInfo.model!;
      }

      final UserEntity currentUserEntity =
          (await getIt<IUserRepository>().getCurrentUser())
              .getOrElse(() => throw 'Cant get current user');
      final String currentUserId = currentUserEntity.id!.getOrCrash()!;

      deviceEntity
          .copyWithStateMassage('Setting up device')
          .copyWithSenderDeviceOs(Platform.operatingSystem)
          .copyWithDeviceSenderDeviceModel(deviceModelString)
          .copyWithSenderId(currentUserId);

      DeviceEntityDtoAbstract.fromDomain();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DevicesFailure, Unit>> updateDatabase({
    required Map<String, dynamic> documentPath,
    required Map<String, dynamic> fieldsToUpdate,
    String? forceUpdateLocation,
  }) async {
    try {
      // await documentPath.update(fieldsToUpdate);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DevicesFailure, Unit>> updateWithDeviceEntity({
    required DeviceEntityAbstract deviceEntity,
  }) async {
    const String updateLocation = 'L';

    try {
      if (updateLocation == 'L') {
        return updateComputer(deviceEntity);
      }
      return updateRemoteDB(deviceEntity);
    } on PlatformException catch (e) {
      if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DevicesFailure, Unit>> turnOnDevices({
    List<String>? devicesId,
    String? forceUpdateLocation,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericLightDE) {
          deviceEntity.lightSwitchState =
              GenericLightSwitchState(DeviceActions.on.toString());
        } else if (deviceEntity is GenericDimmableLightDE) {
          deviceEntity.lightSwitchState =
              GenericDimmableLightSwitchState(DeviceActions.on.toString());
        } else if (deviceEntity is GenericRgbwLightDE) {
          deviceEntity.lightSwitchState =
              GenericRgbwLightSwitchState(DeviceActions.on.toString());
        } else if (deviceEntity is GenericSwitchDE) {
          deviceEntity.switchState =
              GenericSwitchSwitchState(DeviceActions.on.toString());
        } else if (deviceEntity is GenericBoilerDE) {
          deviceEntity.boilerSwitchState =
              GenericBoilerSwitchState(DeviceActions.on.toString());
        } else if (deviceEntity is GenericSmartPlugDE) {
          deviceEntity.smartPlugState =
              GenericSmartPlugState(DeviceActions.on.toString());
        } else {
          logger.w(
            'On action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> turnOffDevices({
    List<String>? devicesId,
    String? forceUpdateLocation,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericLightDE) {
          deviceEntity.lightSwitchState =
              GenericLightSwitchState(DeviceActions.off.toString());
        } else if (deviceEntity is GenericDimmableLightDE) {
          deviceEntity.lightSwitchState =
              GenericDimmableLightSwitchState(DeviceActions.off.toString());
        } else if (deviceEntity is GenericRgbwLightDE) {
          deviceEntity.lightSwitchState =
              GenericRgbwLightSwitchState(DeviceActions.off.toString());
        } else if (deviceEntity is GenericSwitchDE) {
          deviceEntity.switchState =
              GenericSwitchSwitchState(DeviceActions.off.toString());
        } else if (deviceEntity is GenericBoilerDE) {
          deviceEntity.boilerSwitchState =
              GenericBoilerSwitchState(DeviceActions.off.toString());
        } else if (deviceEntity is GenericSmartPlugDE) {
          deviceEntity.smartPlugState =
              GenericSmartPlugState(DeviceActions.off.toString());
        } else {
          logger.w(
            'Off action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> changeColorTemperatureDevices({
    required List<String>? devicesId,
    required int colorTemperatureToChange,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericRgbwLightDE) {
          deviceEntity.lightColorTemperature = GenericRgbwLightColorTemperature(
            colorTemperatureToChange.toString(),
          );
        } else {
          logger.w(
            'Off action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        try {
          if (!deviceEntity.doesWaitingToSendTemperatureColorRequest) {
            deviceEntity.doesWaitingToSendTemperatureColorRequest = true;

            final Future<Either<DevicesFailure, Unit>> updateEntityResponse =
                updateWithDeviceEntity(deviceEntity: deviceEntity);

            await Future.delayed(
              Duration(
                milliseconds:
                    deviceEntity.sendNewTemperatureColorEachMiliseconds,
              ),
            );
            deviceEntity.doesWaitingToSendTemperatureColorRequest = false;

            return updateEntityResponse;
          }
        } catch (e) {
          await Future.delayed(
            Duration(
              milliseconds: deviceEntity.sendNewTemperatureColorEachMiliseconds,
            ),
          );
          deviceEntity.doesWaitingToSendTemperatureColorRequest = false;
          return left(const DevicesFailure.unexpected());
        }
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> changeHsvColorDevices({
    required List<String>? devicesId,
    required HSVColor hsvColorToChange,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericRgbwLightDE) {
          deviceEntity
            ..lightColorAlpha =
                GenericRgbwLightColorAlpha(hsvColorToChange.alpha.toString())
            ..lightColorHue =
                GenericRgbwLightColorHue(hsvColorToChange.hue.toString())
            ..lightColorSaturation = GenericRgbwLightColorSaturation(
              hsvColorToChange.saturation.toString(),
            )
            ..lightColorValue =
                GenericRgbwLightColorValue(hsvColorToChange.value.toString());
        } else {
          logger.w(
            'Off action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        try {
          if (!deviceEntity.doesWaitingToSendHsvColorRequest) {
            deviceEntity.doesWaitingToSendHsvColorRequest = true;

            final Future<Either<DevicesFailure, Unit>> updateEntityResponse =
                updateWithDeviceEntity(deviceEntity: deviceEntity);

            await Future.delayed(
              Duration(
                milliseconds: deviceEntity.sendNewHsvColorEachMiliseconds,
              ),
            );
            deviceEntity.doesWaitingToSendHsvColorRequest = false;

            return updateEntityResponse;
          }
        } catch (e) {
          await Future.delayed(
            Duration(
              milliseconds: deviceEntity.sendNewHsvColorEachMiliseconds,
            ),
          );
          deviceEntity.doesWaitingToSendHsvColorRequest = false;
          return left(const DevicesFailure.unexpected());
        }
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> changeBrightnessDevices({
    required List<String>? devicesId,
    required int brightnessToChange,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);
    Either<DevicesFailure, Unit> totalActionResult = right(unit);

    try {
      Either<DevicesFailure, Unit> actionResult;

      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        } else if (deviceEntity is GenericDimmableLightDE) {
          deviceEntity.lightBrightness =
              GenericDimmableLightBrightness(brightnessToChange.toString());
          actionResult = await dimDimmableLight(deviceEntity);
        } else if (deviceEntity is GenericRgbwLightDE) {
          deviceEntity.lightBrightness =
              GenericRgbwLightBrightness(brightnessToChange.toString());
          actionResult = await dimRgbwLight(deviceEntity);
        } else {
          logger.w(
            'Brightness action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }
        if (actionResult.isLeft()) {
          totalActionResult = actionResult;
        }
      }
      return totalActionResult;
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
  }

  Future<Either<DevicesFailure, Unit>> dimDimmableLight(
    GenericDimmableLightDE deviceEntity,
  ) async {
    try {
      if (!deviceEntity.doesWaitingToSendBrightnessRequest) {
        deviceEntity.doesWaitingToSendBrightnessRequest = true;

        final Future<Either<DevicesFailure, Unit>> updateEntityResponse =
            updateWithDeviceEntity(deviceEntity: deviceEntity);

        await Future.delayed(
          Duration(
            milliseconds: deviceEntity.sendNewBrightnessEachMiliseconds,
          ),
        );
        deviceEntity.doesWaitingToSendBrightnessRequest = false;
        return updateEntityResponse;
      }
    } catch (e) {
      await Future.delayed(
        Duration(
          milliseconds: deviceEntity.sendNewBrightnessEachMiliseconds,
        ),
      );
      deviceEntity.doesWaitingToSendBrightnessRequest = false;
      return left(const DevicesFailure.unexpected());
    }
    return right(unit);
  }

  Future<Either<DevicesFailure, Unit>> dimRgbwLight(
    GenericRgbwLightDE deviceEntity,
  ) async {
    try {
      if (!deviceEntity.doesWaitingToSendBrightnessRequest) {
        deviceEntity.doesWaitingToSendBrightnessRequest = true;

        final Future<Either<DevicesFailure, Unit>> updateEntityResponse =
            updateWithDeviceEntity(deviceEntity: deviceEntity);

        await Future.delayed(
          Duration(
            milliseconds: deviceEntity.sendNewBrightnessEachMiliseconds,
          ),
        );
        deviceEntity.doesWaitingToSendBrightnessRequest = false;
        return updateEntityResponse;
      }
    } catch (e) {
      await Future.delayed(
        Duration(
          milliseconds: deviceEntity.sendNewBrightnessEachMiliseconds,
        ),
      );
      deviceEntity.doesWaitingToSendBrightnessRequest = false;
      return left(const DevicesFailure.unexpected());
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> moveUpStateDevices({
    List<String>? devicesId,
    String? forceUpdateLocation,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericBlindsDE) {
          deviceEntity.blindsSwitchState =
              GenericBlindsSwitchState(DeviceActions.moveUp.toString());
        } else {
          logger.w(
            'Off action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> stopStateDevices({
    List<String>? devicesId,
    String? forceUpdateLocation,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericBlindsDE) {
          deviceEntity.blindsSwitchState =
              GenericBlindsSwitchState(DeviceActions.stop.toString());
        } else if (deviceEntity is GenericSmartTvDE) {
          deviceEntity.pausePlayState = GenericSmartTvPausePlayState(
            DeviceActions.stop.toString(),
          );
        } else {
          logger.w(
            'Stop action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> moveDownStateDevices({
    List<String>? devicesId,
    String? forceUpdateLocation,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericBlindsDE) {
          deviceEntity.blindsSwitchState =
              GenericBlindsSwitchState(DeviceActions.moveDown.toString());
        } else {
          logger.w(
            'Move down action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> suspendDevices({
    required List<String>? devicesId,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericSmartComputerDE) {
          deviceEntity.smartComputerSuspendState =
              GenericSmartComputerSuspendState(
            DeviceActions.suspend.toString(),
          );
        } else {
          logger.w(
            'Suspend action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> shutdownDevices({
    required List<String>? devicesId,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericSmartComputerDE) {
          deviceEntity.smartComputerShutDownState =
              GenericSmartComputerShutdownState(
            DeviceActions.shutdown.toString(),
          );
        } else {
          logger.w(
            'Shutdown action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> changeVolumeDevices({
    required List<String>? devicesId,
  }) async {
    // TODO: implement changeVolumeDevices
    throw UnimplementedError();
  }

  @override
  Future<Either<DevicesFailure, Unit>> openUrlOnDevices({
    required List<String>? devicesId,
    required String url,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericSmartTvDE) {
          deviceEntity.openUrl = GenericSmartTvOpenUrl(url);
        } else {
          logger.w(
            'Open url action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> closeStateDevices({
    List<String>? devicesId,
    String? forceUpdateLocation,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericBlindsDE) {
          deviceEntity.blindsSwitchState =
              GenericBlindsSwitchState(DeviceActions.close.toString());
        } else {
          logger.w(
            'Close action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> pauseStateDevices({
    required List<String>? devicesId,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericSmartTvDE) {
          deviceEntity.pausePlayState = GenericSmartTvPausePlayState(
            DeviceActions.pause.toString(),
          );
        } else {
          logger.w(
            'Pause action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> playStateDevices({
    required List<String>? devicesId,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericSmartTvDE) {
          deviceEntity.pausePlayState = GenericSmartTvPausePlayState(
            DeviceActions.play.toString(),
          );
        } else {
          logger.w(
            'Play action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> queuePrevStateDevices({
    required List<String>? devicesId,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericSmartTvDE) {
          deviceEntity.pausePlayState = GenericSmartTvPausePlayState(
            DeviceActions.skipPreviousVid.toString(),
          );
        } else {
          logger.w(
            'Skip prev vid action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> queueNextStateDevices({
    required List<String>? devicesId,
  }) async {
    final List<DeviceEntityAbstract?> deviceEntityListToUpdate =
        await getDeviceEntityListFromId(devicesId!);

    try {
      for (final DeviceEntityAbstract? deviceEntity
          in deviceEntityListToUpdate) {
        if (deviceEntity == null) {
          continue;
        }
        if (deviceEntity is GenericSmartTvDE) {
          deviceEntity.pausePlayState = GenericSmartTvPausePlayState(
            DeviceActions.skipNextVid.toString(),
          );
        } else {
          logger.w(
            'Skip next vid action not supported for'
            ' ${deviceEntity.entityTypes.getOrCrash()} type',
          );
          continue;
        }

        updateWithDeviceEntity(deviceEntity: deviceEntity);
      }
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DevicesFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DevicesFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const DevicesFailure.unexpected());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DevicesFailure, Unit>> skipVideoDevices({
    required List<String>? devicesId,
  }) async {
    // TODO: implement skipVideoDevices
    throw UnimplementedError();
  }

  @override
  Future<Either<DevicesFailure, Unit>> delete(
    DeviceEntityAbstract deviceEntity,
  ) async {
    return left(const DevicesFailure.unexpected());
  }

  Future<Either<DevicesFailure, Unit>> updateRemoteDB(
    DeviceEntityAbstract deviceEntity,
  ) async {
    return left(const DevicesFailure.unexpected());
  }

  Future<Either<DevicesFailure, Unit>> updateComputer(
    DeviceEntityAbstract deviceEntity,
  ) async {
    try {
      addOrUpdateDeviceAndStateToWaiting(deviceEntity);

      try {
        deviceEntity.copyWithDeviceState(DeviceStateGRPC.waitingInFirebase);

        final String deviceDtoAsString =
            DeviceHelper.convertDomainToJsonString(deviceEntity);
        final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
          allRemoteCommands: deviceDtoAsString,
          sendingType: SendingType.deviceType,
        );
        AppRequestsToHub.appRequestsToHubStreamController
            .add(clientStatusRequests);
      } catch (e) {
        logger.e('This is the error\n$e');

        // final DocumentReference homeDoc =
        //     await _firestore.currentHomeDocument();
        // final CollectionReference devicesCollection =
        //     homeDoc.devicesCollecttion;
        // final DocumentReference deviceDocumentReference =
        //     devicesCollection.doc(deviceEntity.id!.getOrCrash());
        // updateDatabase(documentPath: deviceDocumentReference, fieldsToUpdate: {
        //   'lastKnownIp': lastKnownIp,
        // });
      }

      return right(unit);
    } catch (e) {
      logger.w('Probably ip of device was not inserted into the device object');
      return left(const DevicesFailure.unexpected());
    }
  }

  Future<List<DeviceEntityAbstract?>> getDeviceEntityListFromId(
    List<String> deviceIdList,
  ) async {
    final List<DeviceEntityAbstract> deviceEntityList = [];

    for (final deviceId in deviceIdList) {
      deviceEntityList.add(allDevices[deviceId]!);
    }
    return deviceEntityList;
  }

  /// Search device IP by computer Avahi (mdns) name
  Future<String> getDeviceIpByDeviceAvahiName(String mDnsName) async {
    String deviceIp = '';
    final String fullMdnsName = '$mDnsName.local';

    final MDnsClient client = MDnsClient(
      rawDatagramSocketFactory: (
        dynamic host,
        int port, {
        bool? reuseAddress,
        bool? reusePort,
        int? ttl,
      }) {
        return RawDatagramSocket.bind(host, port, ttl: ttl!);
      },
    );
    // Start the client with default options.

    await client.start();
    await for (final IPAddressResourceRecord record
        in client.lookup<IPAddressResourceRecord>(
      ResourceRecordQuery.addressIPv4(fullMdnsName),
    )) {
      deviceIp = record.address.address;
      logger.v('Found address (${record.address}).');
    }

    // await for (final IPAddressResourceRecord record
    //     in client.lookup<IPAddressResourceRecord>(
    //         ResourceRecordQuery.addressIPv6(fullMdnsName))) {
    //   logger.v('Found address (${record.address}).');
    // }

    client.stop();

    logger.v('Done.');

    return deviceIp;
  }

  /// How to send the data, in the local network or the remote server/cloud
  Future<String> whereToUpdateDevicesData(
    String? forceUpdateLocation,
    String? deviceSecondWifiName,
  ) async {
    String updateLocation;

    try {
      if (forceUpdateLocation == null) {
        final status = await Permission.location.status;
        if (status.isDenied) {
          Permission.location.request();
        }

        final String? wifiName = await NetworkInfo().getWifiName();

        if (deviceSecondWifiName != null &&
            deviceSecondWifiName.isNotEmpty &&
            deviceSecondWifiName == wifiName) {
          updateLocation = 'L'; // L for local network
        } else {
          updateLocation = 'R'; // R for remote
        }
      } else {
        updateLocation = forceUpdateLocation;
      }
    } catch (exception) {
      updateLocation = 'L';
    }

    return updateLocation;
  }

  /// Stream controller of the app request for the hub
  @override
  BehaviorSubject<KtList> allResponseFromTheHubStreamController =
      BehaviorSubject<KtList>();

  @override
  BehaviorSubject<KtList<DeviceEntityAbstract>>
      devicesResponseFromTheHubStreamController =
      BehaviorSubject<KtList<DeviceEntityAbstract>>();

  @override
  BehaviorSubject<KtList<RoomEntity>> roomsResponseFromTheHubStreamController =
      BehaviorSubject<KtList<RoomEntity>>();
}
