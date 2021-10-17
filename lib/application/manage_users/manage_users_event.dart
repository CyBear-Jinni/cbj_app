part of 'manage_users_bloc.dart';

@freezed
class ManageUsersEvent with _$ManageUsersEvent {
  const factory ManageUsersEvent.initialized() = Initialized;

  const factory ManageUsersEvent.addByEmail(String mail) = _AddByEmail;

  const factory ManageUsersEvent.userReceived(
    Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers,
  ) = _UserReceived;

  const factory ManageUsersEvent.deleted(HomeUserEntity homeUserEntity) =
      _Deleted;
}
