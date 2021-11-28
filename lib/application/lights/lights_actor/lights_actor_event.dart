part of 'lights_actor_bloc.dart';

@freezed
class LightsActorEvent with _$LightsActorEvent {
  const factory LightsActorEvent.initialized() = Initialized;

  const factory LightsActorEvent.turnOffAllLights(
    List<String> lightsIdToTurnOff,
    BuildContext context,
  ) = TurnOffAllLights;

  const factory LightsActorEvent.turnOnAllLights(
    List<String> lightsIdToTurnOn,
    BuildContext context,
  ) = TurnOnAllLights;

  const factory LightsActorEvent.deleted(GenericLightDE deviceEntity) = Deleted;
}
