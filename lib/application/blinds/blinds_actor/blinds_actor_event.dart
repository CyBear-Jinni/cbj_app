part of 'blinds_actor_bloc.dart';

@freezed
class BlindsActorEvent with _$BlindsActorEvent {
  const factory BlindsActorEvent.initialized() = Initialized;

  const factory BlindsActorEvent.moveUpAllBlinds(
    List<String>? blindsIdToTurnUp,
    BuildContext context,
  ) = _MoveUpAllBlinds;

  const factory BlindsActorEvent.stopAllBlinds(
    List<String>? blindsIdToStop,
    BuildContext context,
  ) = _StopAllBlinds;

  const factory BlindsActorEvent.moveDownAllBlinds(
    List<String>? blindsIdToTurnDown,
    BuildContext context,
  ) = _MoveDownAllBlinds;

  const factory BlindsActorEvent.deleted(GenericLightDE deviceEntity) =
      _Deleted;
}
