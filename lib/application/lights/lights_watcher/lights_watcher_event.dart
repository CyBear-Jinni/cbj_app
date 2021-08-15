part of 'lights_watcher_bloc.dart';

@freezed
class LightsWatcherEvent with _$LightsWatcherEvent {
  const factory LightsWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory LightsWatcherEvent.devicesReceived(
      Either<DevicesFailure, KtList<DeviceEntityAbstract?>>
          failureOrDevices) = _DevicesReceived;
}
