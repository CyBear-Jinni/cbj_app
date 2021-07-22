part of 'lights_watcher_bloc.dart';

@freezed
class LightsWatcherState with _$LightsWatcherState {
  factory LightsWatcherState.initial() = _Initial;

  const factory LightsWatcherState.loadInProgress() = _LoadInProgress;

  const factory LightsWatcherState.loadSuccess(KtList<DeviceEntity?> devices) =
      _LoadSuccess;

  const factory LightsWatcherState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory LightsWatcherState.lightError() = LightError;
}
