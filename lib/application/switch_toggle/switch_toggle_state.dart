part of 'switch_toggle_bloc.dart';

@freezed
class SwitchToggleState with _$SwitchToggleState {
  factory SwitchToggleState.initial() = _Initial;

  const factory SwitchToggleState.loadInProgress() = _LoadInProgress;

  const factory SwitchToggleState.loadSuccess() = _LoadSuccess;

  const factory SwitchToggleState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory SwitchToggleState.error() = Error;
}
