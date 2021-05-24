part of 'boilers_watcher_bloc.dart';

@freezed
abstract class BoilersWatcherEvent with _$BoilersWatcherEvent {
  const factory BoilersWatcherEvent.watchAllStarted() = _WatchAllBoilersStarted;

  const factory BoilersWatcherEvent.boilersReceived(
          Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices) =
      _BoilersReceived;
}
