part of 'blinds_watcher_bloc.dart';

@freezed
class BlindsWatcherEvent with _$BlindsWatcherEvent {
  const factory BlindsWatcherEvent.watchAllStarted() = WatchAllBlindsStarted;

  const factory BlindsWatcherEvent.blindsReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = BlindsReceived;
}
