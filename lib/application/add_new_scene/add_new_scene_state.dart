part of 'add_new_scene_bloc.dart';

@freezed
class AddNewSceneState with _$AddNewSceneState {
  factory AddNewSceneState.initial() = Initial;

  const factory AddNewSceneState.loadPageState({
    required String actionsName,
    required List<DeviceEntityAbstract> allDevices,
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        allDevicesWithNewAction,
    required List<MapEntry<String, String>> allEntityActions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = LoadPageState;

  const factory AddNewSceneState.loadInProgress() = LoadInProgress;
}
