part of 'switch_toggle_bloc.dart';

@freezed
class SwitchToggleEvent with _$SwitchToggleEvent {
  const factory SwitchToggleEvent.changeAction(
    DeviceEntityAbstract deviceEntity,
    bool changeToState,
  ) = ChangeState;

  const factory SwitchToggleEvent.changeColor(
    DeviceEntityAbstract deviceEntity,
    HSVColor newColor,
  ) = ChangeColor;

  const factory SwitchToggleEvent.create(DeviceEntityAbstract deviceEntity) =
      CreateDevice;
}
