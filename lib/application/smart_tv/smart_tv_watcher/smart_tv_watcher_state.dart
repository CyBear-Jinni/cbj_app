part of 'smart_tv_watcher_bloc.dart';

@freezed
class SmartTvWatcherState with _$SmartTvWatcherState {
  factory SmartTvWatcherState.initial() = Initial;

  const factory SmartTvWatcherState.loadInProgress() = LoadInProgress;

  const factory SmartTvWatcherState.loadSuccess(
    KtList<GenericSmartTvDE?> devices,
  ) = LoadSuccess;

  const factory SmartTvWatcherState.loadFailure(DevicesFailure devicesFailure) =
      LoadFailure;

  const factory SmartTvWatcherState.smartTvsError() = SmartTvsError;
}
