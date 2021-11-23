part of 'light_toggle_bloc.dart';

@freezed
class LightToggleEvent with _$LightToggleEvent {
  const factory LightToggleEvent.changeAction(
    DeviceEntityAbstract deviceEntity,
    bool changeToState,
  ) = ChangeState;

  const factory LightToggleEvent.changeColor(
    DeviceEntityAbstract deviceEntity,
    HSVColor newColor,
  ) = ChangeColor;

  const factory LightToggleEvent.changeBrightness(
    DeviceEntityAbstract deviceEntity,
    double brightness,
  ) = ChangeBrightness;

  const factory LightToggleEvent.create(DeviceEntityAbstract deviceEntity) =
      CreateDevice;
}
