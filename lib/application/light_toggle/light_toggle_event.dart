part of 'light_toggle_bloc.dart';

@freezed
class LightToggleEvent with _$LightToggleEvent {
  const factory LightToggleEvent.initialized({
    required GenericRgbwLightDE rgbwLightDe,
  }) = Initialized;

  const factory LightToggleEvent.changeAction({
    required DeviceEntityAbstract deviceEntity,
    required bool changeToState,
  }) = ChangeState;

  const factory LightToggleEvent.changeColorTemperature({
    required DeviceEntityAbstract deviceEntity,
    required int newColorTemperature,
  }) = ChangeColorTemperature;

  const factory LightToggleEvent.changeHsvColor({
    required DeviceEntityAbstract deviceEntity,
    required HSVColor newHsvColor,
  }) = ChangeHsvColor;

  const factory LightToggleEvent.changeBrightness({
    required DeviceEntityAbstract deviceEntity,
    required double brightness,
  }) = ChangeBrightness;
}
