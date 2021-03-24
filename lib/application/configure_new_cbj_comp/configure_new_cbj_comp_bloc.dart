import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:cybear_jinni/domain/cbj_comp/i_cbj_comp_repository.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/configure_new_cbj_comp/widgets/configure_new_cbj_comp_widget.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

part 'configure_new_cbj_comp_bloc.freezed.dart';
part 'configure_new_cbj_comp_event.dart';
part 'configure_new_cbj_comp_state.dart';

@injectable
class ConfigureNewCbjCompBloc
    extends Bloc<ConfigureNewCbjCompEvent, ConfigureNewCbjCompState> {
  ConfigureNewCbjCompBloc(this._deviceRepository, this._cBJCompRepository)
      : super(ConfigureNewCbjCompState.initial());

  final IDeviceRepository _deviceRepository;
  double progressPercent = 0.0;

  final ICBJCompRepository _cBJCompRepository;

  @override
  Stream<ConfigureNewCbjCompState> mapEventToState(
    ConfigureNewCbjCompEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {},
      initialized: (e) async* {},
      setupNewDevice: (_SetupNewDevice value) async* {
        yield ConfigureNewCbjCompState.actionInProgress(progressPercent);

        final CBJCompEntity compUpdatedData = newCBJCompEntity(
          value.cBJCompEntity,
          value.textEditingController,
        );
        progressPercent += 0.1;
        yield ConfigureNewCbjCompState.actionInProgress(progressPercent);
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
      },
      saveDevicesToCloud: (_SaveDevicesToCloud value) async* {
        final CBJCompEntity compUpdatedData = value.cBJCompEntity;
        bool error = false;

        final KtList<DeviceEntity> devicesList =
            compUpdatedData.cBJCompDevices.getOrCrash();

        for (final DeviceEntity device in devicesList.asList()) {
          final Either<DevicesFailure, Unit> createInCloudResponse =
              await _deviceRepository.create(device);

          createInCloudResponse.fold(
            (l) {
              error = true;
            },
            (r) {},
          );

          progressPercent += 0.3 / devicesList.size;
          yield ConfigureNewCbjCompState.actionInProgress(progressPercent);
        }
        if (error) {
          yield const ConfigureNewCbjCompState.errorInProcess();
        } else {
          add(ConfigureNewCbjCompEvent.saveDevicesToComputer(compUpdatedData));
        }
      },
      saveDevicesToComputer: (_SaveDevicesToComputer value) async* {
        final CBJCompEntity compUpdatedData = value.cBJCompEntity;

        final bool error = await initialNewDevice(compUpdatedData);
        if (!error) {
          progressPercent += 0.1;
          yield ConfigureNewCbjCompState.actionInProgress(progressPercent);
          add(ConfigureNewCbjCompEvent.sendHotSpotInformation(compUpdatedData));
        } else {
          yield const ConfigureNewCbjCompState.errorInProcess();
        }
      },
      sendFirebaseInformation: (_SendFirebaseInformation value) async* {
        final CBJCompEntity compUpdatedData = value.cBJCompEntity;

        bool error = false;

        final Either<CBJCompFailure, Unit> updateAllDevices =
            await _cBJCompRepository
                .setFirebaseAccountInformation(compUpdatedData);

        updateAllDevices.fold(
          (l) {
            error = true;
          },
          (r) => add(
              ConfigureNewCbjCompEvent.checkOperationsCompletedSuccessfully(
                  compUpdatedData)),
        );
        if (error) {
          yield const ConfigureNewCbjCompState.errorInProcess();
        } else {
          progressPercent += 0.3;
          yield ConfigureNewCbjCompState.actionInProgress(progressPercent);
        }
      },
      checkOperationsCompletedSuccessfully:
          (_CheckOperationsCompletedSuccessfully value) async* {

            progressPercent += 0.3;
            yield ConfigureNewCbjCompState.actionInProgress(progressPercent);
        yield const ConfigureNewCbjCompState.completeSuccess();
      },
      sendHotSpotInformation: (_SendHotSpotInformation value) async* {
        bool error = false;

        final CBJCompEntity compUpdatedData = value.cBJCompEntity;
        final Either<CBJCompFailure, Unit> setSecurityBearWiFi =
            await _cBJCompRepository
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
          yield const ConfigureNewCbjCompState.errorInProcess();
        } else {
          progressPercent += 0.3;
          yield ConfigureNewCbjCompState.actionInProgress(progressPercent);
          add(ConfigureNewCbjCompEvent.checkOperationsCompletedSuccessfully(
              compUpdatedData));
        }
      },
    );
  }

  /// Organize all the data from the text fields to updated CBJCompEntity
  CBJCompEntity newCBJCompEntity(CBJCompEntity cbjCompEntity,
      Map<String, TextEditingController> _textEditingController) {
    final String deviceNameFieldKey =
        ConfigureNewCbjCompWidgets.deviceNameFieldKey;
    final List<DeviceEntity> deviceEntityList = [];

    final String roomUuid = Uuid().v1();

    cbjCompEntity.cBJCompDevices.getOrCrash().asList().forEach((deviceE) {
      try {
        final String deviceName = _textEditingController[
                '$deviceNameFieldKey/${deviceE.id.getOrCrash()}']
            .text;
        deviceEntityList.add(
          deviceE.copyWith(
            defaultName: DeviceDefaultName(deviceName),
            roomId: DeviceUniqueId.fromUniqueString(roomUuid),
          ),
        );
      } catch (e) {
        print("Can't add unsupported device");
      }
    });
    final CBJCompEntity compUpdatedData = cbjCompEntity.copyWith(
        cBJCompDevices: CBJCompDevices(deviceEntityList.toImmutableList()));

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
