part of 'boilers_actor_bloc.dart';

@freezed
abstract class BoilersActorState with _$BoilersActorState {
  const factory BoilersActorState.initial() = _Initial;

  const factory BoilersActorState.actionInProgress() = _ActionInProgress;

  const factory BoilersActorState.deleteFailure(DevicesFailure devicesFailure) =
      _DeleteFailure;

  const factory BoilersActorState.deleteSuccess() = _DeleteSuccess;
}
