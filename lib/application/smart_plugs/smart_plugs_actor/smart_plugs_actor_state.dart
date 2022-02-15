part of 'smart_plugs_actor_bloc.dart';

@freezed
class SmartPlugsActorState with _$SmartPlugsActorState {
  const factory SmartPlugsActorState.initial() = _Initial;

  const factory SmartPlugsActorState.actionInProgress() = _ActionInProgress;

  const factory SmartPlugsActorState.deleteFailure(
    DevicesFailure devicesFailure,
  ) = _DeleteFailure;

  const factory SmartPlugsActorState.deleteSuccess() = _DeleteSuccess;
}
