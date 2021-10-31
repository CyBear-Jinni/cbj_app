part of 'remote_pipes_bloc.dart';

@freezed
class RemotePipesState with _$RemotePipesState {
  const factory RemotePipesState({
    required RemotePipesDomain remotePipesDomainName,
  }) = _RemotePipesState;

  factory RemotePipesState.initial() => RemotePipesState(
        remotePipesDomainName: RemotePipesDomain(''),
      );
}
