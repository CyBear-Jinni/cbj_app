part of 'boilers_watcher_bloc.dart';

@freezed
abstract class BoilersWatcherState with _$BoilersWatcherState {
  factory BoilersWatcherState.initial() = _Initial;

  const factory BoilersWatcherState.loadInProgress() = _LoadInProgress;

  const factory BoilersWatcherState.loadSuccess(KtList<DeviceEntity?> devices) =
      _LoadSuccess;

  const factory BoilersWatcherState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory BoilersWatcherState.boilerError() = _BoilerError;
}
