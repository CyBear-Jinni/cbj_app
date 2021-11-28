part of 'device_watcher_bloc.dart';

@freezed
class DeviceWatcherEvent with _$DeviceWatcherEvent {
  const factory DeviceWatcherEvent.watchAllStarted() = WatchAllStarted;

  const factory DeviceWatcherEvent.devicesReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = DevicesReceived;
}
