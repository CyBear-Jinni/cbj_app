part of 'smart_computers_actor_bloc.dart';

@freezed
class SmartComputersActorEvent with _$SmartComputersActorEvent {
  const factory SmartComputersActorEvent.initialized() = Initialized;

  const factory SmartComputersActorEvent.turnOffAllSmartComputers(
    List<String> smartComputersIdToTurnOff,
    BuildContext context,
  ) = TurnOffAllSmartComputers;

  const factory SmartComputersActorEvent.turnOnAllSmartComputers(
    List<String> smartComputersIdToTurnOn,
    BuildContext context,
  ) = TurnOnAllSmartComputers;

  const factory SmartComputersActorEvent.suspendAllSmartComputers(
    List<String> smartComputersId,
    BuildContext context,
  ) = SuspendAllSmartComputers;

  const factory SmartComputersActorEvent.shutdownAllSmartComputers(
    List<String> smartComputersId,
    BuildContext context,
  ) = ShutdownAllSmartComputers;

  const factory SmartComputersActorEvent.deleted(GenericSwitchDE deviceEntity) =
      Deleted;
}
