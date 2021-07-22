part of 'blinds_actor_bloc.dart';

@freezed
class BlindsActorState with _$BlindsActorState {
  const factory BlindsActorState.initial() = _Initial;

  const factory BlindsActorState.actionInProgress() = _ActionInProgress;

  const factory BlindsActorState.deleteFailure(DevicesFailure devicesFailure) =
      _DeleteFailure;

  const factory BlindsActorState.deleteSuccess() = _DeleteSuccess;
}
