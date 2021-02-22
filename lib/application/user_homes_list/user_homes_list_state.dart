part of 'user_homes_list_bloc.dart';

@freezed
abstract class UserHomesListState with _$UserHomesListState {
  factory UserHomesListState.initial() = _Initial;

  const factory UserHomesListState.loadInProgress() = _LoadInProgress;

  const factory UserHomesListState.loadSuccess(
      KtList<AllHomesOfUserEntity> homes) = _LoadSuccess;

  const factory UserHomesListState.enterHome() = _EnterHome;

  const factory UserHomesListState.loadFailure(
      AllHomesOfUserFailures allHomesOfUserFailures) = _LoadFailure;

  const factory UserHomesListState.loadFailureEnteringHome(
      HomeUserFailures allHomesOfUserFailures) = _LoadFailureEnteringHome;

  const factory UserHomesListState.error() = Error;
}
