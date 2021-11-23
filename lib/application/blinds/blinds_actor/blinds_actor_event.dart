part of 'blinds_actor_bloc.dart';

@freezed
class BlindsActorEvent with _$BlindsActorEvent {
  const factory BlindsActorEvent.initialized() = Initialized;

  const factory BlindsActorEvent.moveUpAllBlinds(
    List<String>? blindsIdToTurnUp,
    BuildContext context,
  ) = MoveUpAllBlinds;

  const factory BlindsActorEvent.stopAllBlinds(
    List<String>? blindsIdToStop,
    BuildContext context,
  ) = StopAllBlinds;

  const factory BlindsActorEvent.moveDownAllBlinds(
    List<String>? blindsIdToTurnDown,
    BuildContext context,
  ) = MoveDownAllBlinds;

  const factory BlindsActorEvent.deleted(GenericLightDE deviceEntity) = Deleted;
}
