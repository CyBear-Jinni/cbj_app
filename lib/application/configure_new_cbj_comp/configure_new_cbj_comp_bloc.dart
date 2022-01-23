import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:cybear_jinni/domain/cbj_comp/i_cbj_comp_repository.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/manage_network/i_manage_network_repository.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:cybear_jinni/domain/security_bear/i_security_bear_connection_repository.dart';
import 'package:cybear_jinni/domain/security_bear/security_bear_failures.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/configure_new_cbj_comp/widgets/configure_new_cbj_comp_widget.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';
import 'package:wifi_iot/wifi_iot.dart';

part 'configure_new_cbj_comp_bloc.freezed.dart';
part 'configure_new_cbj_comp_event.dart';
part 'configure_new_cbj_comp_state.dart';

@injectable
class ConfigureNewCbjCompBloc
    extends Bloc<ConfigureNewCbjCompEvent, ConfigureNewCbjCompState> {
  ConfigureNewCbjCompBloc(
    this._deviceRepository,
    this._cBJCompRepository,
    this._securityBearConnectionRepository,
  ) : super(const ConfigureNewCbjCompState.initial()) {
    on<Initialized>(_initialized);
    on<Deleted>(_deleted);
    on<SetupNewDevice>(_setupNewDevice);
    on<SaveDevicesToCloud>(_saveDevicesToCloud);
    on<SaveDevicesToComputer>(_saveDevicesToComputer);
    on<SendFirebaseInformation>(_sendFirebaseInformation);
    on<SendHotSpotInformation>(_sendHotSpotInformation);
    on<CheckOperationsCompletedSuccessfully>(
      _checkOperationsCompletedSuccessfully,
    );
    on<CheckConnectedToWiFiNetwork>(_checkConnectedToWiFiNetwork);
    on<SearchIfHubOnTheSameWifiNetwork>(_searchIfHubOnTheSameWifiNetwork);
  }

  final ISecurityBearConnectionRepository _securityBearConnectionRepository;
  final IDeviceRepository _deviceRepository;

  /// Progress counter for setting new devices
  double progressPercent = 0.0;

  final ICBJCompRepository _cBJCompRepository;

  Future<void> _initialized(
    Initialized event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    emit(const ConfigureNewCbjCompState.initial());
  }

  Future<void> _deleted(
    Deleted event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {}

  Future<void> _setupNewDevice(
    SetupNewDevice event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));

    final CBJCompEntity compUpdatedData = newCBJCompEntity(
      event.cBJCompEntity,
      event.textEditingController,
    );
    progressPercent += 0.1;
    emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));
    add(ConfigureNewCbjCompEvent.saveDevicesToCloud(compUpdatedData));
    //
    // final bool error = await InitialNewDevice(compUpdatedData);
    // if (!error) {
    //   progressPercent += 0.1;
    //   yield ConfigureNewCbjCompState.actionInProgress(progressPercent);
    //   add(ConfigureNewCbjCompEvent.saveDevicesToCloud(compUpdatedData));
    // } else {
    //   yield const ConfigureNewCbjCompState.errorInProcess();
    // }
  }

  Future<void> _saveDevicesToCloud(
    SaveDevicesToCloud event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    final CBJCompEntity compUpdatedData = event.cBJCompEntity;
    bool error = false;

    final KtList<GenericLightDE> devicesList =
        compUpdatedData.cBJCompDevices!.getOrCrash();

    for (final GenericLightDE device in devicesList.asList()) {
      final Either<DevicesFailure, Unit> createInCloudResponse =
          await _deviceRepository.create(device);

      createInCloudResponse.fold(
        (l) {
          error = true;
        },
        (r) {},
      );

      progressPercent += 0.3 / devicesList.size;
      emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));
    }
    if (error) {
      emit(const ConfigureNewCbjCompState.errorInProcess());
    } else {
      add(ConfigureNewCbjCompEvent.saveDevicesToComputer(compUpdatedData));
    }
  }

  Future<void> _saveDevicesToComputer(
    SaveDevicesToComputer event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    final CBJCompEntity compUpdatedData = event.cBJCompEntity;

    final bool error = await initialNewDevice(compUpdatedData);
    if (!error) {
      progressPercent += 0.1;
      emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));
      add(ConfigureNewCbjCompEvent.sendHotSpotInformation(compUpdatedData));
    } else {
      emit(const ConfigureNewCbjCompState.errorInProcess());
    }
  }

  Future<void> _sendFirebaseInformation(
    SendFirebaseInformation event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    final CBJCompEntity compUpdatedData = event.cBJCompEntity;

    const bool error = false;

    // final Either<CBJCompFailure, Unit> updateAllDevices =
    //     await _cBJCompRepository
    //         .setFirebaseAccountInformation(compUpdatedData);
    //
    // updateAllDevices.fold(
    //   (l) {
    //     error = true;
    //   },
    //   (r) => add(
    //     ConfigureNewCbjCompEvent.checkOperationsCompletedSuccessfully(
    //       compUpdatedData,
    //     ),
    //   ),
    // );
    if (error) {
      emit(const ConfigureNewCbjCompState.errorInProcess());
    } else {
      progressPercent += 0.3;
      emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));
    }
  }

  Future<void> _sendHotSpotInformation(
    SendHotSpotInformation event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    progressPercent += 0.3;
    emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));

    final CBJCompEntity compUpdatedData = event.cBJCompEntity;
    final Either<SecurityBearFailures, Unit> setSecurityBearWiFi =
        await _securityBearConnectionRepository
            .setSecurityBearWiFiInformation(compUpdatedData);

    setSecurityBearWiFi.fold(
      (l) {
        emit(const ConfigureNewCbjCompState.errorInProcess());
        return;
      },
      (r) {
        progressPercent += 0.5;
        WiFiForIoTPlugin.disconnect();
        emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));
        // add(
        //   ConfigureNewCbjCompEvent.checkOperationsCompletedSuccessfully(
        //     compUpdatedData,
        //   ),
        // );
      },
    );
    emit(const ConfigureNewCbjCompState.completeSuccess());
  }

  Future<void> _checkOperationsCompletedSuccessfully(
    CheckOperationsCompletedSuccessfully event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    bool error = false;

    final CBJCompEntity compUpdatedData = event.cBJCompEntity;
    final Either<SecurityBearFailures, Unit> setSecurityBearWiFi =
        await _securityBearConnectionRepository
            .setSecurityBearWiFiInformation(compUpdatedData);

    setSecurityBearWiFi.fold(
      (l) {
        error = true;
      },
      (r) {
        return;
      },
    );
    if (error) {
      emit(const ConfigureNewCbjCompState.errorInProcess());
    } else {
      progressPercent += 0.3;
      emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));
      add(
        ConfigureNewCbjCompEvent.checkOperationsCompletedSuccessfully(
          compUpdatedData,
        ),
      );
    }
  }

  Future<void> _checkConnectedToWiFiNetwork(
    CheckConnectedToWiFiNetwork event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    // TODO: Not suer if it will open the WiFi when hotspot is open,
    // delete if not
    await WiFiForIoTPlugin.loadWifiList();

    bool isConnectedToWifi = false;
    logger.i('Waiting for user to get connected to WiFi');

    while (true) {
      isConnectedToWifi = await WiFiForIoTPlugin.isConnected();
      if (isConnectedToWifi) {
        // TODO: Check if connected to the same WiFI that user set up in the
        //  first screen, if not show the user massage about it
        break;
      }
      await Future.delayed(const Duration(seconds: 10));
    }

    progressPercent += 50;
    emit(ConfigureNewCbjCompState.actionInProgress(progressPercent));
  }

  Future<void> _searchIfHubOnTheSameWifiNetwork(
    SearchIfHubOnTheSameWifiNetwork event,
    Emitter<ConfigureNewCbjCompState> emit,
  ) async {
    int connectionTimeout = 0;

    while (true) {
      connectionTimeout++;
      (await _securityBearConnectionRepository
              .searchForSecurityBearInCurrentNetwork())
          .fold((l) {}, (r) {
        emit(const ConfigureNewCbjCompState.completeSuccess());
        return;
      });
      if (connectionTimeout == 10) {
        break;
      }
      await Future.delayed(const Duration(seconds: 30));
    }

    emit(const ConfigureNewCbjCompState.errorInProcess());
  }

  /// Organize all the data from the text fields to updated CBJCompEntity
  CBJCompEntity newCBJCompEntity(
    CBJCompEntity cbjCompEntity,
    Map<String, TextEditingController> _textEditingController,
  ) {
    final String deviceNameFieldKey =
        ConfigureNewCbjCompWidgets.deviceNameFieldKey;
    final List<GenericLightDE> deviceEntityList = [];

    final String roomUuid = const Uuid().v1();
    final String roomName = _textEditingController['allInSameRoom']!.text;

    final ManageNetworkEntity manageWiFiEntity =
        IManageNetworkRepository.manageWiFiEntity!;
    final String secondWiFi = manageWiFiEntity.name!.getOrCrash();

    cbjCompEntity.cBJCompDevices!.getOrCrash().asList().forEach((deviceE) {
      try {
        final String deviceName = _textEditingController[
                '$deviceNameFieldKey/${deviceE.uniqueId.getOrCrash()}']!
            .text;
        deviceEntityList.add(
          deviceE..defaultName = DeviceDefaultName(deviceName),
        );
      } catch (e) {
        print("Can't add unsupported device");
      }
    });
    final CBJCompEntity compUpdatedData = cbjCompEntity.copyWith(
      cBJCompDevices: CBJCompDevices(deviceEntityList.toImmutableList()),
    );

    return compUpdatedData;
  }

  Future<bool> initialNewDevice(CBJCompEntity compUpdatedData) async {
    bool error = false;

    final Either<CBJCompFailure, Unit> updateAllDevices =
        await _cBJCompRepository.firstSetup(compUpdatedData);

    updateAllDevices.fold(
      (l) {
        error = true;
      },
      (r) {},
    );
    return error;
  }
}
