part of 'lights_watcher_bloc.dart';

@freezed
class LightsWatcherEvent with _$LightsWatcherEvent {
  const factory LightsWatcherEvent.watchAllStarted() = WatchAllStarted;

  const factory LightsWatcherEvent.devicesReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = DevicesReceived;
}
