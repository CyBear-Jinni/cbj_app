part of 'blinds_watcher_bloc.dart';

@freezed
class BlindsWatcherState with _$BlindsWatcherState {
  factory BlindsWatcherState.initial() = Initial;

  const factory BlindsWatcherState.loadInProgress() = LoadInProgress;

  const factory BlindsWatcherState.loadSuccess(
    KtList<GenericBlindsDE?> devices,
  ) = LoadSuccess;

  const factory BlindsWatcherState.loadFailure(DevicesFailure devicesFailure) =
      LoadFailure;

  const factory BlindsWatcherState.blindError() = BlindError;
}
