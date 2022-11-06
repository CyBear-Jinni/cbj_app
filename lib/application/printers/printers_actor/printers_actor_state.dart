part of 'printers_actor_bloc.dart';

@freezed
class PrintersActorState with _$PrintersActorState {
  const factory PrintersActorState.initial() = _Initial;

  const factory PrintersActorState.actionInProgress() = _ActionInProgress;

  const factory PrintersActorState.deleteFailure(
    DevicesFailure devicesFailure,
  ) = _DeleteFailure;

  const factory PrintersActorState.deleteSuccess() = _DeleteSuccess;
}
