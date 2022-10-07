part of 'switches_watcher_bloc.dart';

@freezed
class SwitchesWatcherEvent with _$SwitchesWatcherEvent {
  const factory SwitchesWatcherEvent.watchAllStarted() = WatchAllStarted;

  const factory SwitchesWatcherEvent.devicesReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = DevicesReceived;
}
