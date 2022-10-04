part of 'plus_button_settings_bloc.dart';

@freezed
class PlusButtonSettingsState with _$PlusButtonSettingsState {
  factory PlusButtonSettingsState.initial() = Initial;

  factory PlusButtonSettingsState.loadInProgress() = LoadInProgress;

  factory PlusButtonSettingsState.loadSuccess() = LoadSuccess;

  factory PlusButtonSettingsState.loadFailure() = LoadFailure;
}
