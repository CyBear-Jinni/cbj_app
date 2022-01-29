part of 'add_new_action_bloc.dart';

@freezed
class AddNewActionState with _$AddNewActionState {
  const factory AddNewActionState({
    required String actionsName,
    required List<DeviceEntityAbstract> allDevices,
    required List<DeviceEntityAbstract> allDevicesWithNewAction,
    required List<MapEntry<String, String>> allEntityActions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _AddNewActionState;

  factory AddNewActionState.initial() => AddNewActionState(
        actionsName: '',
        allDevices: [],
        allDevicesWithNewAction: [],
        allEntityActions: [],
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
