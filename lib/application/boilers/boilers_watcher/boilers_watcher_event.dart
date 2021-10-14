part of 'boilers_watcher_bloc.dart';

@freezed
class BoilersWatcherEvent with _$BoilersWatcherEvent {
  const factory BoilersWatcherEvent.watchAllStarted() = _WatchAllBoilersStarted;

  const factory BoilersWatcherEvent.boilersReceived(
      Either<DevicesFailure, KtList<DeviceEntityAbstract?>>
          failureOrDevices,) = _BoilersReceived;
}
