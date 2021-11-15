part of 'switches_actor_bloc.dart';

@freezed
class SwitchesActorEvent with _$SwitchesActorEvent {
  const factory SwitchesActorEvent.initialized() = Initialized;

  const factory SwitchesActorEvent.turnOffAllSwitches(
    List<String> switchesIdToTurnOff,
    BuildContext context,
  ) = _TurnOffAllSwitches;

  const factory SwitchesActorEvent.turnOnAllSwitches(
    List<String> switchesIdToTurnOn,
    BuildContext context,
  ) = _TurnOnAllSwitches;

  const factory SwitchesActorEvent.deleted(GenericSwitchDE deviceEntity) =
      _Deleted;
}
