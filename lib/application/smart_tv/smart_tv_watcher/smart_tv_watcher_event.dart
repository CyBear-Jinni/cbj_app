part of 'smart_tv_watcher_bloc.dart';

@freezed
class SmartTvWatcherEvent with _$SmartTvWatcherEvent {
  const factory SmartTvWatcherEvent.watchAllStarted() = _WatchAllSmartTvStarted;

  const factory SmartTvWatcherEvent.smart_tvReceived(
    Either<DevicesFailure, KtList<DeviceEntityAbstract?>> failureOrDevices,
  ) = _smart_tvReceived;
}
