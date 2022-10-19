part of 'printers_watcher_bloc.dart';

@freezed
class PrintersWatcherEvent with _$PrintersWatcherEvent {
  const factory PrintersWatcherEvent.watchAllStarted() = WatchAllStarted;

  const factory PrintersWatcherEvent.devicesReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = DevicesReceived;
}
