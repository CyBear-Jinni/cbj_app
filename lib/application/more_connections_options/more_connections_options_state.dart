part of 'more_connections_options_bloc.dart';

@freezed
class MoreConnectionsOptionsState with _$MoreConnectionsOptionsState {
  factory MoreConnectionsOptionsState.initial() = _Initial;

  const factory MoreConnectionsOptionsState.loadInProgress() = _LoadInProgress;

  const factory MoreConnectionsOptionsState.loadSuccess() = _loadSuccess;

  const factory MoreConnectionsOptionsState.loadFailure(
    HubFailures hubFailure,
  ) = _loadFailure;
}
