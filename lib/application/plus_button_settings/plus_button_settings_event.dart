part of 'plus_button_settings_bloc.dart';

@freezed
class PlusButtonSettingsEvent with _$PlusButtonSettingsEvent {
  const factory PlusButtonSettingsEvent.initialized(BuildContext context) =
      Initialized;

  const factory PlusButtonSettingsEvent.logout() = Logout;
}
