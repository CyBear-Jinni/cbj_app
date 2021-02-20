part of 'manage_users_bloc.dart';

@freezed
abstract class ManageUsersEvent with _$ManageUsersEvent {
  const factory ManageUsersEvent.initialized() = Initialized;
  const factory ManageUsersEvent.addByEmail(String mail) = _AddByEmail;
  const factory ManageUsersEvent.deleted(UserEntity userEntity) = _Deleted;
}