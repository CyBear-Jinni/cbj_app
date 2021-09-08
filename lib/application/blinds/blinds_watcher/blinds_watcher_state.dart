part of 'blinds_watcher_bloc.dart';

@freezed
class BlindsWatcherState with _$BlindsWatcherState {
  factory BlindsWatcherState.initial() = _Initial;

  const factory BlindsWatcherState.loadInProgress() = _LoadInProgress;

  const factory BlindsWatcherState.loadSuccess(
      KtList<GenericBlindsDE?> devices) = _LoadSuccess;

  const factory BlindsWatcherState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory BlindsWatcherState.blindError() = BlindError;
}
