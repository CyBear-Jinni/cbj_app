import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_entity.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_value_objects.dart';
import 'package:cybear_jinni/domain/add_user_to_home/i_add_user_to_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'add_user_to_home_bloc.freezed.dart';
part 'add_user_to_home_event.dart';
part 'add_user_to_home_state.dart';

@injectable
class AddUserToHomeBloc extends Bloc<AddUserToHomeEvent, AddUserToHomeState> {
  AddUserToHomeBloc(this._addUserToHomeRepo)
      : super(AddUserToHomeState.initial());

  final IAddUserToHomeRepository _addUserToHomeRepo;

  @override
  Stream<AddUserToHomeState> mapEventToState(
    AddUserToHomeEvent event,
  ) async* {
    yield const AddUserToHomeState.actionInProgress();
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

        AddUserToHomeEntity addUserHomeEntity = AddUserToHomeEntity(
          email: AddUserToHomeEmail(e.email),
          permission: AddUserToHomePermission('Admin'),
        );
        final userOption = await _addUserToHomeRepo.add(addUserHomeEntity);
        yield userOption.fold(
          (_) => const AddUserToHomeState.addingHomeFailure(),
          (homeID) => AddUserToHomeState.addingUserSuccess(homeID),
        );
      },
    );
  }
}
