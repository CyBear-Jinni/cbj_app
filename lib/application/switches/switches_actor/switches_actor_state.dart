part of 'switches_actor_bloc.dart';

@freezed
class SwitchesActorState with _$SwitchesActorState {
  const factory SwitchesActorState.initial() = _Initial;

  const factory SwitchesActorState.actionInProgress() = _ActionInProgress;

  const factory SwitchesActorState.deleteFailure(
      DevicesFailure devicesFailure) = _DeleteFailure;

  const factory SwitchesActorState.deleteSuccess() = _DeleteSuccess;
}
