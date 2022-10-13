part of 'smart_computer_watcher_bloc.dart';

@freezed
class SmartComputersWatcherEvent with _$SmartComputersWatcherEvent {
  const factory SmartComputersWatcherEvent.watchAllStarted() = WatchAllStarted;

  const factory SmartComputersWatcherEvent.devicesReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = DevicesReceived;
}
