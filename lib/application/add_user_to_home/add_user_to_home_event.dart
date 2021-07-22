part of 'add_user_to_home_bloc.dart';

@freezed
class AddUserToHomeEvent with _$AddUserToHomeEvent {
  const factory AddUserToHomeEvent.emailChanged(String emailStr) = EmailChanged;

  const factory AddUserToHomeEvent.permissionChanged(String permission) =
      PermissionChanged;

  const factory AddUserToHomeEvent.addUserToHomeByEmail(String email) =
      AddUserToHomeByEmail;
}
