part of 'smart_plugs_watcher_bloc.dart';

@freezed
class SmartPlugsWatcherEvent with _$SmartPlugsWatcherEvent {
  const factory SmartPlugsWatcherEvent.watchAllStarted() = WatchAllStarted;

  const factory SmartPlugsWatcherEvent.devicesReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = DevicesReceived;
}
