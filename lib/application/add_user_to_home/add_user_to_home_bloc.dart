import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_value_objects.dart';
import 'package:cybear_jinni/domain/add_user_to_home/i_add_user_to_home_repository.dart';
import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:cybear_jinni/domain/home_user/home_user_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_user_to_home_bloc.freezed.dart';
part 'add_user_to_home_event.dart';
part 'add_user_to_home_state.dart';

@injectable
class AddUserToHomeBloc extends Bloc<AddUserToHomeEvent, AddUserToHomeState> {
  AddUserToHomeBloc() : super(AddUserToHomeState.initial()) {
    on<EmailChanged>(_emailChanged);
    on<PermissionChanged>(_permissionChanged);
    on<AddUserToHomeByEmail>(_addUserToHomeByEmail);
  }

  Future<void> _emailChanged(
    EmailChanged event,
    Emitter<AddUserToHomeState> emit,
  ) async {}

  Future<void> _permissionChanged(
    PermissionChanged event,
    Emitter<AddUserToHomeState> emit,
  ) async {}

  Future<void> _addUserToHomeByEmail(
    AddUserToHomeByEmail event,
    Emitter<AddUserToHomeState> emit,
  ) async {
    emit(const AddUserToHomeState.actionInProgress());

    final HomeUserEntity addUserHomeEntity = HomeUserEntity.empty().copyWith(
      email: HomeUserEmail(event.email),
      permission: HomeUserPermission('Admin'),
    );
    final userOption =
        await IAddUserToHomeRepository.instance.add(addUserHomeEntity);
    emit(
      userOption.fold(
        (_) => const AddUserToHomeState.addingHomeFailure(),
        (homeID) => AddUserToHomeState.addingUserSuccess(homeID),
      ),
    );
  }
}
