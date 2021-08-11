part of 'device_watcher_bloc.dart';

@freezed
class DeviceWatcherState with _$DeviceWatcherState {
  factory DeviceWatcherState.initial() = _Initial;

  const factory DeviceWatcherState.loadInProgress() = _LoadInProgress;

  const factory DeviceWatcherState.loadSuccess(
      KtList<GenericLightDE?> devices) = _LoadSuccess;

  const factory DeviceWatcherState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory DeviceWatcherState.error() = Error;
}
