part of 'lights_actor_bloc.dart';

@freezed
abstract class LightsActorEvent with _$LightsActorEvent {
  const factory LightsActorEvent.initialized() = Initialized;
  const factory LightsActorEvent.turnOffAllLights(
      List<String> lightsIdToTurnOff, BuildContext context) = _TurnOffAllLights;
  const factory LightsActorEvent.turnOnAllLights(
      List<String> lightsIdToTurnOn, BuildContext context) = _TurnOnAllLights;
  const factory LightsActorEvent.deleted(DeviceEntity deviceEntity) = _Deleted;
}
