part of 'printers_watcher_bloc.dart';

@freezed
class PrintersWatcherState with _$PrintersWatcherState {
  factory PrintersWatcherState.initial() = _Initial;

  const factory PrintersWatcherState.loadInProgress() = _LoadInProgress;

  const factory PrintersWatcherState.loadSuccess(
    KtList<DeviceEntityAbstract?> devices,
  ) = _loadSuccess;

  const factory PrintersWatcherState.loadFailure(
    DevicesFailure devicesFailure,
  ) = _loadFailure;

  const factory PrintersWatcherState.printersError() = PrintersError;
}
