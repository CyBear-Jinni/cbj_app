import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/routine/i_routine_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/routine/value_objects_routine_cbj.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_new_routine_bloc.freezed.dart';
part 'add_new_routine_event.dart';
part 'add_new_routine_state.dart';

@injectable
class AddNewRoutineBloc extends Bloc<AddNewRoutineEvent, AddNewRoutineState> {
  AddNewRoutineBloc() : super(AddNewRoutineState.initial()) {
    on<AddRoutineDate>(_addRoutineDate);
    on<ChangeActionDevices>(_changeActionDevices);
    on<RoutineNameChange>(_routineNameChange);
    on<AddDevicesWithNewActions>(_addDevicesWithNewActions);
    on<Deleted>(_deleted);
    on<Initialized>(_initialized);
    on<SendRoutineToHub>(_sendRoutineToHub);

    add(const AddNewRoutineEvent.initialized());
  }

  List<DeviceEntityAbstract?> _allDevices = [];

  String routineName = '';
  List<DeviceEntityAbstract> allDevices = [];

  RoutineCbjRepeatDateDays? daysToRepeat;
  RoutineCbjRepeatDateHour? hourToRepeat;
  RoutineCbjRepeatDateMinute? minutesToRepeat;

  /// List of devices with entities, will be treated as actions
  List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
      allDevicesWithNewAction = [];
  List<MapEntry<String, String>> allEntityActions = [];
  bool showErrorMessages = false;
  bool isSubmitting = false;
  Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption = none();

  Future<void> _initialized(
    Initialized event,
    Emitter<AddNewRoutineState> emit,
  ) async {
    (await IDeviceRepository.instance.getAllDevices()).fold((l) => null, (r) {
      _allDevices = List<DeviceEntityAbstract>.from(r.iter);
    });
    _allDevices.removeWhere((element) => element == null);

    emit(
      LoadPageState(
        allDevices: _allDevices as List<DeviceEntityAbstract>,
        showErrorMessages: showErrorMessages,
        isSubmitting: isSubmitting,
        authFailureOrSuccessOption: authFailureOrSuccessOption,
        allEntityActions: allEntityActions,
        actionsName: routineName,
        allDevicesWithNewAction: allDevicesWithNewAction,
      ),
    );
  }

  Future<void> _addRoutineDate(
    AddRoutineDate event,
    Emitter<AddNewRoutineState> emit,
  ) async {
    daysToRepeat = event.daysToRepeat;
    hourToRepeat = event.hourToRepeat;
    minutesToRepeat = event.minutesToRepeat;
  }

  Future<void> _changeActionDevices(
    ChangeActionDevices event,
    Emitter<AddNewRoutineState> emit,
  ) async {
    // for (final DeviceEntityAbstract? device in _allDevices) {
    //   if (device != null && event.deviceId == device.uniqueId.getOrCrash()) {
    //     emit(
    //       state.copyWith(
    //         allDevicesWithNewAction: [device],
    //         actionsName: '',
    //         authFailureOrSuccessOption: none(),
    //       ),
    //     );
    //   }
    // }
  }

  Future<void> _sendRoutineToHub(
    SendRoutineToHub event,
    Emitter<AddNewRoutineState> emit,
  ) async {
    if (daysToRepeat == null ||
        hourToRepeat == null ||
        minutesToRepeat == null) {
      emit(const AddNewRoutineFailure());

      return;
    }
    IRoutineCbjRepository.instance
        .addOrUpdateNewRoutineInHubFromDevicesPropertyActionList(
      routineName,
      allDevicesWithNewAction,
      daysToRepeat!,
      hourToRepeat!,
      minutesToRepeat!,
    );
  }

  Future<void> _routineNameChange(
    RoutineNameChange event,
    Emitter<AddNewRoutineState> emit,
  ) async {
    routineName = event.routineName;
  }

  Future<void> _addDevicesWithNewActions(
    AddDevicesWithNewActions event,
    Emitter<AddNewRoutineState> emit,
  ) async {
    allDevicesWithNewAction.addAll(event.smartDevicesWithActionToAdd);

    emit(const LoadInProgress());
    emit(
      LoadPageState(
        allDevices: _allDevices as List<DeviceEntityAbstract>,
        showErrorMessages: showErrorMessages,
        isSubmitting: isSubmitting,
        authFailureOrSuccessOption: authFailureOrSuccessOption,
        allEntityActions: allEntityActions,
        actionsName: routineName,
        allDevicesWithNewAction: allDevicesWithNewAction,
      ),
    );
  }

  Future<void> _deleted(
    Deleted event,
    Emitter<AddNewRoutineState> emit,
  ) async {}
}
