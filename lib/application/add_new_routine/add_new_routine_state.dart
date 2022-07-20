part of 'add_new_routine_bloc.dart';

@freezed
class AddNewRoutineState with _$AddNewRoutineState {
  factory AddNewRoutineState.initial() = Initial;

  const factory AddNewRoutineState.loadPageState({
    required String actionsName,
    required List<DeviceEntityAbstract> allDevices,
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        allDevicesWithNewAction,
    required List<MapEntry<String, String>> allEntityActions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = LoadPageState;

  const factory AddNewRoutineState.loadInProgress() = LoadInProgress;
}
