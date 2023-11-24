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
  ManageUsersBloc() : super(const ManageUsersState.initial()) {
    on<Initialized>(_initialized);
    on<UserReceived>(_userReceived);
    on<AddByEmail>(_addByEmail);
    on<Deleted>(_deleted);
  }

  StreamSubscription<Either<HomeUserFailures, KtList<HomeUserEntity>>>?
      _userStreamSubscription;

  Future<void> _initialized(
    Initialized event,
    Emitter<ManageUsersState> emit,
  ) async {
    emit(const ManageUsersState.inProgress());
    await _userStreamSubscription?.cancel();
    _userStreamSubscription = IHomeUserRepository.instance.getAllUsers().listen(
          (allUsersEvent) => add(ManageUsersEvent.userReceived(allUsersEvent)),
        );
  }

  Future<void> _userReceived(
    UserReceived event,
    Emitter<ManageUsersState> emit,
  ) async {
    emit(const ManageUsersState.inProgress());

    emit(
      event.failureOrUsers.fold(
        (f) => ManageUsersState.loadFailure(f),
        (user) => ManageUsersState.loadSuccess(user),
      ),
    );
  }

  Future<void> _addByEmail(
    AddByEmail event,
    Emitter<ManageUsersState> emit,
  ) async {}
  Future<void> _deleted(
    Deleted event,
    Emitter<ManageUsersState> emit,
  ) async {}

  @override
  Future<void> close() async {
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}
