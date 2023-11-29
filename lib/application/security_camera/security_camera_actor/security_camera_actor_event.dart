part of 'security_camera_actor_bloc.dart';

@freezed
class SecurityCamerasActorEvent with _$SecurityCamerasActorEvent {
  const factory SecurityCamerasActorEvent.initialized() = Initialized;

  const factory SecurityCamerasActorEvent.turnOffAllSecurityCameras(
    List<String> securityCamerasIdToTurnOff,
    BuildContext context,
  ) = TurnOffAllSecurityCameras;

  const factory SecurityCamerasActorEvent.turnOnAllSecurityCameras(
    List<String> securityCamerasIdToTurnOn,
    BuildContext context,
  ) = TurnOnAllSecurityCameras;

  const factory SecurityCamerasActorEvent.openSecurityCamerasWebPage(
    GenericSecurityCameraDE securityCamera,
    BuildContext context,
  ) = OpenSecurityCamerasWebPage;

  const factory SecurityCamerasActorEvent.shutdownAllSecurityCameras(
    List<String> securityCamerasId,
    BuildContext context,
  ) = ShutdownAllSecurityCameras;

  const factory SecurityCamerasActorEvent.deleted(
      GenericSwitchDE deviceEntity) = Deleted;
}
