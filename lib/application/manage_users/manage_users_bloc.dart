import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/home_user/i_home_user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'manage_users_bloc.freezed.dart';
part 'manage_users_event.dart';
part 'manage_users_state.dart';

@injectable
class ManageUsersBloc extends Bloc<ManageUsersEvent, ManageUsersState> {
  ManageUsersBloc(this._userRepository)
      : super(const ManageUsersState.initial());

  final IHomeUserRepository _userRepository;

  StreamSubscription<Either<HomeUserFailures, KtList<HomeUserEntity>>>?
      _userStreamSubscription;

  @override
  Stream<ManageUsersState> mapEventToState(
    ManageUsersEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield const ManageUsersState.inProgress();
        await _userStreamSubscription?.cancel();
        _userStreamSubscription = _userRepository.getAllUsers().listen(
            (allUsersEvent) =>
                add(ManageUsersEvent.userReceived(allUsersEvent)));
      },
      userReceived: (e) async* {
        yield e.failureOrUsers.fold(
          (f) => ManageUsersState.loadFailure(f),
          (user) => ManageUsersState.loadSuccess(user),
        );
      },
      addByEmail: (e) async* {},
      deleted: (e) async* {},
    );
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}
