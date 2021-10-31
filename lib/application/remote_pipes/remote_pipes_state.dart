part of 'remote_pipes_bloc.dart';

@freezed
class RemotePipesState with _$RemotePipesState {
  // const factory RemotePipesState() = _AddUserToHomeState;

  const factory RemotePipesState.initial() = Initial;

  const factory RemotePipesState.actionInProgress() = ActionInProgress;

  const factory RemotePipesState.addingRemotePipeSuccess() =
      AddingRemotePipeSuccess;
  const factory RemotePipesState.addingRemotePipeFailure() =
      AddingRemotePipeFailure;
}
