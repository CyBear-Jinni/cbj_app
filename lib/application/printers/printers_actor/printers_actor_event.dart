part of 'printers_actor_bloc.dart';

@freezed
class PrintersActorEvent with _$PrintersActorEvent {
  const factory PrintersActorEvent.initialized() = Initialized;

  const factory PrintersActorEvent.turnOffAllPrinters(
    List<String> printersIdToTurnOff,
    BuildContext context,
  ) = TurnOffAllPrinters;

  const factory PrintersActorEvent.turnOnAllPrinters(
    List<String> printersIdToTurnOn,
    BuildContext context,
  ) = TurnOnAllPrinters;

  const factory PrintersActorEvent.suspendAllPrinters(
    List<String> printersId,
    BuildContext context,
  ) = SuspendAllPrinters;

  const factory PrintersActorEvent.shutdownAllPrinters(
    List<String> printersId,
    BuildContext context,
  ) = ShutdownAllPrinters;

  const factory PrintersActorEvent.deleted(GenericSwitchDE deviceEntity) =
      Deleted;
}
