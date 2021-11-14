part of 'light_toggle_bloc.dart';

@freezed
class LightToggleState with _$LightToggleState {
  const factory LightToggleState({
    required HSVColor hsvColor,
    required double brightness,
  }) = _LightToggleState;

  factory LightToggleState.initial() => LightToggleState(
        hsvColor: HSVColor.fromColor(Colors.white),
        brightness: 1,
      );
}
