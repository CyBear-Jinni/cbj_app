part of 'smart_tv_actor_bloc.dart';

@freezed
class SmartTvActorState with _$SmartTvActorState {
  const factory SmartTvActorState.initial() = _Initial;

  const factory SmartTvActorState.actionInProgress() = _ActionInProgress;

  const factory SmartTvActorState.deleteFailure(DevicesFailure devicesFailure) =
      _DeleteFailure;

  const factory SmartTvActorState.deleteSuccess() = _DeleteSuccess;
}
