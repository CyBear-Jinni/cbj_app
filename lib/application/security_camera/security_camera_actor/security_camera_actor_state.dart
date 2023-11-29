part of 'security_camera_actor_bloc.dart';

@freezed
class SecurityCamerasActorState with _$SecurityCamerasActorState {
  const factory SecurityCamerasActorState.initial() = _Initial;

  const factory SecurityCamerasActorState.actionInProgress() =
      _ActionInProgress;

  const factory SecurityCamerasActorState.deleteFailure(
    DevicesFailure devicesFailure,
  ) = _DeleteFailure;

  const factory SecurityCamerasActorState.deleteSuccess() = _DeleteSuccess;
}
