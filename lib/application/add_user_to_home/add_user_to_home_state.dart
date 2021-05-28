part of 'add_user_to_home_bloc.dart';

@freezed
abstract class AddUserToHomeState with _$AddUserToHomeState {
  const factory AddUserToHomeState({
    required AddUserToHomeEmail emailAddress,
    required AddUserToHomePermission permission,
    required Option<Either<AddUserToHomeFailures, Unit>>
        addUserFailureOrSuccessOption,
  }) = _AddUserToHomeState;

  factory AddUserToHomeState.initial() => AddUserToHomeState(
        emailAddress: AddUserToHomeEmail(''),
        permission: AddUserToHomePermission(''),
        addUserFailureOrSuccessOption: none(),
      );

  const factory AddUserToHomeState.actionInProgress() = _ActionInProgress;

  const factory AddUserToHomeState.addingUserSuccess(String homeId) =
      AddingUserSucess;
  const factory AddUserToHomeState.addingHomeFailure() = AddingHomeFauliare;
}
