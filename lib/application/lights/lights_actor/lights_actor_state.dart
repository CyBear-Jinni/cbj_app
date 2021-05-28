part of 'lights_actor_bloc.dart';

@freezed
class LightsActorState with _$LightsActorState {
  const factory LightsActorState.initial() = _Initial;

  const factory LightsActorState.actionInProgress() = _ActionInProgress;

  const factory LightsActorState.deleteFailure(DevicesFailure devicesFailure) =
      _DeleteFailure;

  const factory LightsActorState.deleteSuccess() = _DeleteSuccess;
}
