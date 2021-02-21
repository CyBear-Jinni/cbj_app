part of 'add_user_bloc.dart';

@freezed
abstract class AddUserState with _$AddUserState {
  const factory AddUserState({
    @required AddUserEmail emailAddress,
    @required AddUserPermission permission,
    @required
        Option<Either<AddUserFailures, Unit>> addUserFailureOrSuccessOption,
  }) = _AddUserState;

  factory AddUserState.initial() => AddUserState(
        emailAddress: AddUserEmail(''),
        permission: AddUserPermission(''),
        addUserFailureOrSuccessOption: none(),
      );

  const factory AddUserState.actionInProgress() = _ActionInProgress;

  const factory AddUserState.addingUserSuccess(String homeId) =
      AddingUserSucess;
  const factory AddUserState.addingHomeFailure() = AddingHomeFauliare;
}
