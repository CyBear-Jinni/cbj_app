part of 'smart_plug_toggle_bloc.dart';

@freezed
class SmartPlugToggleEvent with _$SmartPlugToggleEvent {
  const factory SmartPlugToggleEvent.changeAction(
    DeviceEntityAbstract deviceEntity,
    bool changeToState,
  ) = ChangeState;

  const factory SmartPlugToggleEvent.changeColor(
    DeviceEntityAbstract deviceEntity,
    HSVColor newColor,
  ) = ChangeColor;

  const factory SmartPlugToggleEvent.create(DeviceEntityAbstract deviceEntity) =
      CreateDevice;
}
