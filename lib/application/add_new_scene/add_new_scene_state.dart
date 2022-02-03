part of 'add_new_scene_bloc.dart';

@freezed
class AddNewSceneState with _$AddNewSceneState {
  const factory AddNewSceneState({
    required String actionsName,
    required List<DeviceEntityAbstract> allDevices,
    required List<DeviceEntityAbstract> allDevicesWithNewAction,
    required List<MapEntry<String, String>> allEntityActions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _AddNewSceneState;

  factory AddNewSceneState.initial() => AddNewSceneState(
        actionsName: '',
        allDevices: [],
        allDevicesWithNewAction: [],
        allEntityActions: [],
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
