part of 'device_watcher_bloc.dart';

@freezed
abstract class DeviceWatcherEvent with _$DeviceWatcherEvent {
  const factory DeviceWatcherEvent.watchAllStarted() = _WatchAllStarted;
}
