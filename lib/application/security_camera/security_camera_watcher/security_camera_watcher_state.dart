part of 'security_camera_watcher_bloc.dart';

@freezed
class SecurityCamerasWatcherState with _$SecurityCamerasWatcherState {
  factory SecurityCamerasWatcherState.initial() = _Initial;

  const factory SecurityCamerasWatcherState.loadInProgress() = _LoadInProgress;

  const factory SecurityCamerasWatcherState.loadSuccess(
    KtList<DeviceEntityAbstract?> devices,
  ) = _loadSuccess;

  const factory SecurityCamerasWatcherState.loadFailure(
    DevicesFailure devicesFailure,
  ) = _loadFailure;

  const factory SecurityCamerasWatcherState.securityCamerasError() =
      SecurityCamerasError;
}
