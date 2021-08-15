part of 'blinds_watcher_bloc.dart';

@freezed
class BlindsWatcherEvent with _$BlindsWatcherEvent {
  const factory BlindsWatcherEvent.watchAllStarted() = _WatchAllBlindsStarted;

  const factory BlindsWatcherEvent.blindsReceived(
      Either<DevicesFailure, KtList<DeviceEntityAbstract?>>
          failureOrDevices) = _blindsReceived;
}
