part of 'light_toggle_bloc.dart';

@freezed
class LightToggleEvent with _$LightToggleEvent {
  const factory LightToggleEvent.changeAction(
      GenericLightDE deviceEntity, bool changeToState) = _ChangeState;

  const factory LightToggleEvent.create(GenericLightDE deviceEntity) =
      _CreateDevice;
}
