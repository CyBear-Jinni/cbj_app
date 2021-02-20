part of 'manage_users_bloc.dart';

@freezed
abstract class ManageUsersState with _$ManageUsersState {
  const factory ManageUsersState.initial() = _Initial;

  const factory ManageUsersState.inProgress() = _InProgress;

  const factory ManageUsersState.loadSuccess(KtList<UserEntity> users) =
      _LoadSuccess;

  const factory ManageUsersState.addSuccess(String email) = _AddSuccess;

  const factory ManageUsersState.deleteFailure(UserFailures userFailures) =
      _DeleteFailure;

  const factory ManageUsersState.deleteSuccess() = _DeleteSuccess;

  const factory ManageUsersState.loadFailure(UserFailures userFailure) =
      _loadFailure;

  const factory ManageUsersState.error() = Error;
}
