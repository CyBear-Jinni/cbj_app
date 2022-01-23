part of 'smart_plug_toggle_bloc.dart';

@freezed
class SmartPlugToggleState with _$SmartPlugToggleState {
  factory SmartPlugToggleState.initial() = _Initial;

  const factory SmartPlugToggleState.loadInProgress() = _LoadInProgress;

  const factory SmartPlugToggleState.loadSuccess() = _LoadSuccess;

  const factory SmartPlugToggleState.loadFailure(
    DevicesFailure devicesFailure,
  ) = _loadFailure;

  const factory SmartPlugToggleState.error() = Error;
}
