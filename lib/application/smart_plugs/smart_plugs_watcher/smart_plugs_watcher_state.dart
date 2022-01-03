part of 'smart_plugs_watcher_bloc.dart';

@freezed
class SmartPlugsWatcherState with _$SmartPlugsWatcherState {
  factory SmartPlugsWatcherState.initial() = _Initial;

  const factory SmartPlugsWatcherState.loadInProgress() = _LoadInProgress;

  const factory SmartPlugsWatcherState.loadSuccess(
    KtList<DeviceEntityAbstract?> devices,
  ) = _loadSuccess;

  const factory SmartPlugsWatcherState.loadFailure(
    DevicesFailure devicesFailure,
  ) = _loadFailure;

  const factory SmartPlugsWatcherState.smartPlugsError() = SmartPlugsError;
}
