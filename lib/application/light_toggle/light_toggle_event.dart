part of 'light_toggle_bloc.dart';

@freezed
abstract class LightToggleEvent with _$LightToggleEvent {
  const factory LightToggleEvent.changeAction(
      DeviceEntity deviceEntity, bool forceStraightToComputer) = _ChangeState;

  const factory LightToggleEvent.create(DeviceEntity deviceEntity) =
      _CreateDevice;
}
