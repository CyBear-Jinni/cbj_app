part of 'device_actor_bloc.dart';

@freezed
class DeviceActorState with _$DeviceActorState {
  const factory DeviceActorState.initial() = _Initial;

  const factory DeviceActorState.actionInProgress() = _ActionInProgress;

  const factory DeviceActorState.deleteFailure(DevicesFailure devicesFailure) =
      _DeleteFailure;

  const factory DeviceActorState.deleteSuccess() = _DeleteSuccess;
}
