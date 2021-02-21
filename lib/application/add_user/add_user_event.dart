part of 'add_user_bloc.dart';

@freezed
abstract class AddUserEvent with _$AddUserEvent {
  const factory AddUserEvent.emailChanged(String emailStr) = EmailChanged;

  const factory AddUserEvent.permissionChanged(String permission) =
      PermissionChanged;

  const factory AddUserEvent.addUserByEmail(String email) = AddUserByEmail;
}
