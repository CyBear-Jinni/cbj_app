part of 'light_toggle_bloc.dart';

@freezed
class LightToggleState with _$LightToggleState {
  factory LightToggleState.initial() = _Initial;

  const factory LightToggleState.loadInProgress() = _LoadInProgress;

  const factory LightToggleState.loadSuccess() = _LoadSuccess;

  const factory LightToggleState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory LightToggleState.error() = Error;
}
