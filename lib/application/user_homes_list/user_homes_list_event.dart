part of 'user_homes_list_bloc.dart';

@freezed
class UserHomesListEvent with _$UserHomesListEvent {
  const factory UserHomesListEvent.watchAllStarted() = WatchAllStarted;

  const factory UserHomesListEvent.joinExistingHome(
    AllHomesOfUserEntity? allHomesOfUserEntity,
  ) = JoinExistingHome;

  const factory UserHomesListEvent.allHomesOfUserReceived(
    Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
        failureOrAllHomesOfUser,
  ) = AllHomesOfUserReceived;
}
