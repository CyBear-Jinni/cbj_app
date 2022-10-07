part of 'add_new_binding_bloc.dart';

@freezed
class AddNewBindingState with _$AddNewBindingState {
  factory AddNewBindingState.initial() = Initial;

  const factory AddNewBindingState.loadPageState({
    required String actionsName,
    required List<DeviceEntityAbstract> allDevices,
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        allDevicesWithNewAction,
    required List<MapEntry<String, String>> allEntityActions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = LoadPageState;

  const factory AddNewBindingState.loadInProgress() = LoadInProgress;
}
