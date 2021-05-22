part of 'blinds_watcher_bloc.dart';

@freezed
abstract class BlindsWatcherState with _$BlindsWatcherState {
  factory BlindsWatcherState.initial() = _Initial;

  const factory BlindsWatcherState.loadInProgress() = _LoadInProgress;

  const factory BlindsWatcherState.loadSuccess(KtList<DeviceEntity> devices) =
      _LoadSuccess;

  const factory BlindsWatcherState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory BlindsWatcherState.blindError() = BlindError;
}
