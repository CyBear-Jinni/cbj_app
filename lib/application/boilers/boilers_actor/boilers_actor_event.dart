part of 'boilers_actor_bloc.dart';

@freezed
abstract class BoilersActorEvent with _$BoilersActorEvent {
  const factory BoilersActorEvent.initialized() = Initialized;

  const factory BoilersActorEvent.turnOnAllBoilers(
          List<String?> boilersIdToTurnUp, BuildContext context) =
      _TurnOnAllBoilers;
  const factory BoilersActorEvent.turnOffAllBoilers(
          List<String?> boilersIdToTurnOff, BuildContext context) =
      _TurnOffAllBoilers;

  const factory BoilersActorEvent.deleted(DeviceEntity deviceEntity) = _Deleted;
}
