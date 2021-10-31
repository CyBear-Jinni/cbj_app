part of 'remote_pipes_bloc.dart';

@freezed
class RemotePipesEvent with _$RemotePipesEvent {
  const factory RemotePipesEvent.initialized() = Initialized;

  const factory RemotePipesEvent.remotePipesUrlChanged(String emailStr) =
      RemotePipesUrlChanged;

  const factory RemotePipesEvent.permissionChanged(String permission) =
      PermissionChanged;

  const factory RemotePipesEvent.addRemotePipeUrl() = AddRemotePipeUrl;
}
