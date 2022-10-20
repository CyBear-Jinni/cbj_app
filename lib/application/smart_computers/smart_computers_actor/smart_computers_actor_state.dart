part of 'smart_computers_actor_bloc.dart';

@freezed
class SmartComputersActorState with _$SmartComputersActorState {
  const factory SmartComputersActorState.initial() = _Initial;

  const factory SmartComputersActorState.actionInProgress() = _ActionInProgress;

  const factory SmartComputersActorState.deleteFailure(
    DevicesFailure devicesFailure,
  ) = _DeleteFailure;

  const factory SmartComputersActorState.deleteSuccess() = _DeleteSuccess;
}
