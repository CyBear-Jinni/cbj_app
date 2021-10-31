part of 'configure_new_cbj_comp_bloc.dart';

@freezed
class ConfigureNewCbjCompState with _$ConfigureNewCbjCompState {
  const factory ConfigureNewCbjCompState.initial() = _Initial;

  const factory ConfigureNewCbjCompState.actionInProgress(
    double progressPercentage,
  ) = ActionInProgress;

  const factory ConfigureNewCbjCompState.completeSuccess() = CompleteSuccess;

  const factory ConfigureNewCbjCompState.errorInProcess() = ErrorInProcess;
}
