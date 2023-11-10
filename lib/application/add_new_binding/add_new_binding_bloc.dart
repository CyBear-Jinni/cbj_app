import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/binding/i_binding_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_new_binding_bloc.freezed.dart';
part 'add_new_binding_event.dart';
part 'add_new_binding_state.dart';

@injectable
class AddNewBindingBloc extends Bloc<AddNewBindingEvent, AddNewBindingState> {
  AddNewBindingBloc(this._deviceRepository, this._bindingRepository)
      : super(AddNewBindingState.initial()) {
    on<ChangeActionDevices>(_changeActionDevices);
    on<BindingNameChange>(_bindingNameChange);
    on<AddDevicesWithNewActions>(_addDevicesWithNewActions);
    on<Deleted>(_deleted);
    on<Initialized>(_initialized);
    on<SendBindingToHub>(_sendBindingToHub);

    add(const AddNewBindingEvent.initialized());
  }

  final IDeviceRepository _deviceRepository;
  final IBindingCbjRepository _bindingRepository;

  List<DeviceEntityAbstract?> _allDevices = [];

  String bindingName = '';
  List<DeviceEntityAbstract> allDevices = [];

  /// List of devices with entities, will be treated as actions
  List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
      allDevicesWithNewAction = [];
  List<MapEntry<String, String>> allEntityActions = [];
  bool showErrorMessages = false;
  bool isSubmitting = false;
  Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption = none();

  Future<void> _initialized(
    Initialized event,
    Emitter<AddNewBindingState> emit,
  ) async {
    (await _deviceRepository.getAllDevices()).fold((l) => null, (r) {
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
        actionsName: bindingName,
        allDevicesWithNewAction: allDevicesWithNewAction,
      ),
    );
  }

  Future<void> _changeActionDevices(
    ChangeActionDevices event,
    Emitter<AddNewBindingState> emit,
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

  Future<void> _sendBindingToHub(
    SendBindingToHub event,
    Emitter<AddNewBindingState> emit,
  ) async {
    IBindingCbjRepository.instance
        .addOrUpdateNewBindingInHubFromDevicesPropertyActionList(
      bindingName,
      allDevicesWithNewAction,
    );
  }

  Future<void> _bindingNameChange(
    BindingNameChange event,
    Emitter<AddNewBindingState> emit,
  ) async {
    bindingName = event.bindingName;
  }

  Future<void> _addDevicesWithNewActions(
    AddDevicesWithNewActions event,
    Emitter<AddNewBindingState> emit,
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
        actionsName: bindingName,
        allDevicesWithNewAction: allDevicesWithNewAction,
      ),
    );
  }

  Future<void> _deleted(
    Deleted event,
    Emitter<AddNewBindingState> emit,
  ) async {}
}
