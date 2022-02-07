part of 'add_new_action_bloc.dart';

@freezed
class AddNewActionState with _$AddNewActionState {
  /// Will save the state with the values of the action that user want to preform
  const factory AddNewActionState({
    required String actionsName,
    required String propertyName,
    required List<DeviceEntityAbstract> allDevices,

    /// Will contain (in that order) device to change his property to change and the new value of this property
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        allDevicesWithNewAction,
    required List<MapEntry<String, String>> allEntityActions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _AddNewActionState;

  factory AddNewActionState.initial() => AddNewActionState(
        actionsName: '',
        propertyName: '',
        allDevices: [],
        allDevicesWithNewAction: [],
        allEntityActions: [],
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
