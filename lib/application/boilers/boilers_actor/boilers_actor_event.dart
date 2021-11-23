part of 'boilers_actor_bloc.dart';

@freezed
class BoilersActorEvent with _$BoilersActorEvent {
  const factory BoilersActorEvent.initialized() = Initialized;

  const factory BoilersActorEvent.turnOnAllBoilers(
    List<String>? boilersIdToTurnUp,
    BuildContext context,
  ) = TurnOnAllBoilers;

  const factory BoilersActorEvent.turnOffAllBoilers(
    List<String>? boilersIdToTurnOff,
    BuildContext context,
  ) = TurnOffAllBoilers;

  const factory BoilersActorEvent.deleted(GenericBoilerDE deviceEntity) =
      Deleted;
}
