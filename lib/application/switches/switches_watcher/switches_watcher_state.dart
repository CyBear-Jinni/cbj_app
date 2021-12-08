part of 'switches_watcher_bloc.dart';

@freezed
class SwitchesWatcherState with _$SwitchesWatcherState {
  factory SwitchesWatcherState.initial() = _Initial;

  const factory SwitchesWatcherState.loadInProgress() = _LoadInProgress;

  const factory SwitchesWatcherState.loadSuccess(
    KtList<DeviceEntityAbstract?> devices,
  ) = _loadSuccess;

  const factory SwitchesWatcherState.loadFailure(
    DevicesFailure devicesFailure,
  ) = _loadFailure;

  const factory SwitchesWatcherState.switchesError() = SwitchesError;
}
