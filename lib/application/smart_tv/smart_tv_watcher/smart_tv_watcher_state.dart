part of 'smart_tv_watcher_bloc.dart';

@freezed
class SmartTvWatcherState with _$SmartTvWatcherState {
  factory SmartTvWatcherState.initial() = _Initial;

  const factory SmartTvWatcherState.loadInProgress() = _LoadInProgress;

  const factory SmartTvWatcherState.loadSuccess(
      KtList<GenericLightDE?> devices) = _LoadSuccess;

  const factory SmartTvWatcherState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory SmartTvWatcherState.blindError() = BlindError;
}
