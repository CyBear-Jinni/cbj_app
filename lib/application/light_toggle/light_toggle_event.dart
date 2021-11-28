part of 'light_toggle_bloc.dart';

@freezed
class LightToggleEvent with _$LightToggleEvent {
  const factory LightToggleEvent.changeAction(
    DeviceEntityAbstract deviceEntity,
    bool changeToState,
  ) = ChangeState;

  const factory LightToggleEvent.changeColorTemperature(
    DeviceEntityAbstract deviceEntity,
    int newColorTemperature,
  ) = ChangeColorTemperature;

  const factory LightToggleEvent.changeHsvColor(
    DeviceEntityAbstract deviceEntity,
    HSVColor newHsvColor,
  ) = ChangeHsvColor;

  const factory LightToggleEvent.changeBrightness(
    DeviceEntityAbstract deviceEntity,
    double brightness,
  ) = ChangeBrightness;

  const factory LightToggleEvent.create(DeviceEntityAbstract deviceEntity) =
      CreateDevice;
}
