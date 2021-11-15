part of 'switch_toggle_bloc.dart';

@freezed
class SwitchToggleEvent with _$SwitchToggleEvent {
  const factory SwitchToggleEvent.changeAction(
    DeviceEntityAbstract deviceEntity,
    bool changeToState,
  ) = _ChangeState;

  const factory SwitchToggleEvent.changeColor(
    DeviceEntityAbstract deviceEntity,
    HSVColor newColor,
  ) = _ChangeColor;

  const factory SwitchToggleEvent.create(DeviceEntityAbstract deviceEntity) =
      _CreateDevice;
}
