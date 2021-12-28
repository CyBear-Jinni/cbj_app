part of 'smart_plugs_actor_bloc.dart';

@freezed
class SmartPlugsActorEvent with _$SmartPlugsActorEvent {
  const factory SmartPlugsActorEvent.initialized() = Initialized;

  const factory SmartPlugsActorEvent.turnOffAllSmartPlugs(
    List<String> smartPlugsIdToTurnOff,
    BuildContext context,
  ) = TurnOffAllSmartPlugs;

  const factory SmartPlugsActorEvent.turnOnAllSmartPlugs(
    List<String> smartPlugsIdToTurnOn,
    BuildContext context,
  ) = TurnOnAllSmartPlugs;

  const factory SmartPlugsActorEvent.deleted(GenericSmartPlugDE deviceEntity) =
      Deleted;
}
