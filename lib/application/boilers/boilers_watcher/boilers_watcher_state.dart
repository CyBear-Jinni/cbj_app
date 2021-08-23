part of 'boilers_watcher_bloc.dart';

@freezed
class BoilersWatcherState with _$BoilersWatcherState {
  factory BoilersWatcherState.initial() = _Initial;

  const factory BoilersWatcherState.loadInProgress() = _LoadInProgress;

  const factory BoilersWatcherState.loadSuccess(
      KtList<GenericLightDE?> devices) = _LoadSuccess;

  const factory BoilersWatcherState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory BoilersWatcherState.boilerError() = _BoilerError;
}
