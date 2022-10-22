part of 'smart_computer_watcher_bloc.dart';

@freezed
class SmartComputersWatcherState with _$SmartComputersWatcherState {
  factory SmartComputersWatcherState.initial() = _Initial;

  const factory SmartComputersWatcherState.loadInProgress() = _LoadInProgress;

  const factory SmartComputersWatcherState.loadSuccess(
    KtList<DeviceEntityAbstract?> devices,
  ) = _loadSuccess;

  const factory SmartComputersWatcherState.loadFailure(
    DevicesFailure devicesFailure,
  ) = _loadFailure;

  const factory SmartComputersWatcherState.smartComputersError() =
      SmartComputersError;
}
