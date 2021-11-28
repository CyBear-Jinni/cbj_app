part of 'smart_tv_actor_bloc.dart';

@freezed
class SmartTvActorEvent with _$SmartTvActorEvent {
  const factory SmartTvActorEvent.initialized() = Initialized;

  const factory SmartTvActorEvent.turnOnTv(
    List<String>? smartTvIdToTurnOn,
    BuildContext context,
  ) = MoveUpAllSmartTv;

  const factory SmartTvActorEvent.turnOff(
    List<String>? smartTvIdToTurnOff,
    BuildContext context,
  ) = StopAllSmartTv;

  const factory SmartTvActorEvent.deleted(GenericLightDE deviceEntity) =
      Deleted;
}
