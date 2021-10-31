import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remote_pipes_bloc.freezed.dart';
part 'remote_pipes_event.dart';
part 'remote_pipes_state.dart';

@injectable
class RemotePipesBloc extends Bloc<RemotePipesEvent, RemotePipesState> {
  RemotePipesBloc() : super(RemotePipesState.initial());

  // final IAddUserToHomeRepository _addUserToHomeRepo;

  @override
  Stream<RemotePipesState> mapEventToState(
    RemotePipesEvent event,
  ) async* {
    yield* event.map(
      initialized: (Initialized value) async* {
        yield const RemotePipesState.initial();
      },
      remotePipesUrlChanged: (RemotePipesUrlChanged value) async* {
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
      addRemotePipeUrl: (e) async* {
        // yield const RemotePipesState.actionInProgress();
        //
        // final HomeUserEntity addUserHomeEntity =
        //     HomeUserEntity.empty().copyWith(
        //   email: HomeUserEmail(e.email),
        //   permission: HomeUserPermission('Admin'),
        // );
        // final userOption = await _addUserToHomeRepo.add(addUserHomeEntity);
        // yield userOption.fold(
        //   (_) => const RemotePipesState.addingHomeFailure(),
        //   (homeID) => RemotePipesState.addingUserSuccess(homeID),
        // );
      },
    );
  }
}
