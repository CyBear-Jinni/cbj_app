part of 'security_camera_watcher_bloc.dart';

@freezed
class SecurityCamerasWatcherEvent with _$SecurityCamerasWatcherEvent {
  const factory SecurityCamerasWatcherEvent.watchAllStarted() = WatchAllStarted;

  const factory SecurityCamerasWatcherEvent.devicesReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = DevicesReceived;
}
