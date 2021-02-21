import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/add_user/add_user_entity.dart';
import 'package:cybear_jinni/domain/add_user/add_user_failures.dart';
import 'package:cybear_jinni/domain/add_user/add_user_value_objects.dart';
import 'package:cybear_jinni/domain/add_user/i_add_user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'add_user_bloc.freezed.dart';
part 'add_user_event.dart';
part 'add_user_state.dart';

@injectable
class AddUserBloc extends Bloc<AddUserEvent, AddUserState> {
  AddUserBloc(this._addUserRepo) : super(AddUserState.initial());

  final IAddUserRepository _addUserRepo;

  @override
  Stream<AddUserState> mapEventToState(
    AddUserEvent event,
  ) async* {
    yield const AddUserState.actionInProgress();
    yield* event.map(
      emailChanged: (e) async* {
        // yield state.copyWith(
        //   emailAddress: AddUserEmail(e.emailStr),
        //   addUserFailureOrSuccessOption: none(),
        // );
      },
      permissionChanged: (e) async* {
        // yield state.copyWith(
        //   permission: AddUserPermission(e.permission),
        //   addUserFailureOrSuccessOption: none(),
        // );
      },
      addUserByEmail: (e) async* {
        // final isPasswordValid = state.password.isValid();
        // if (isEmailValid && isPasswordValid) {
        // yield state.copyWith(
        // isSubmitting: true,
        // authFailureOrSuccessOption: none(),
        // );

        AddUserEntity addUserEntity = AddUserEntity(
          email: AddUserEmail(e.email),
          permission: AddUserPermission('Admin'),
        );
        final userOption = await _addUserRepo.add(addUserEntity);
        yield userOption.fold(
          (_) => const AddUserState.addingHomeFailure(),
          (homeID) => AddUserState.addingUserSuccess(homeID),
        );
      },
    );
  }
}
