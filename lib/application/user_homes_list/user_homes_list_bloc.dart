import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_entity.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'user_homes_list_bloc.freezed.dart';
part 'user_homes_list_event.dart';
part 'user_homes_list_state.dart';

@injectable
class UserHomesListBloc extends Bloc<UserHomesListEvent, UserHomesListState> {
  UserHomesListBloc(this._userRepository) : super(UserHomesListState.initial());

  final IUserRepository _userRepository;
  StreamSubscription<
          Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>>?
      _userHomesStreamSubscription;

  @override
  Stream<UserHomesListState> mapEventToState(
    UserHomesListEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const UserHomesListState.loadInProgress();
        await _userHomesStreamSubscription?.cancel();
        _userHomesStreamSubscription = _userRepository.watchAll().listen(
              (failureOrDevices) => add(
                UserHomesListEvent.allHomesOfUserReceived(failureOrDevices),
              ),
            );
      },
      allHomesOfUserReceived: (e) async* {
        yield const UserHomesListState.loadInProgress();

        yield e.failureOrAllHomesOfUser.fold(
          (f) => UserHomesListState.loadFailure(f),
          (allHomes) => UserHomesListState.loadSuccess(allHomes),
        );
      },
      joinExistingHome: (e) async* {
        yield const UserHomesListState.loadInProgress();

        final Either<HomeUserFailures, Unit> joinHomeOutput =
            await _userRepository.joinExistingHome(e.allHomesOfUserEntity!);
        yield joinHomeOutput.fold(
          (f) => UserHomesListState.loadFailureEnteringHome(f),
          (r) => const UserHomesListState.enterHome(),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _userHomesStreamSubscription?.cancel();
    return super.close();
  }
}
