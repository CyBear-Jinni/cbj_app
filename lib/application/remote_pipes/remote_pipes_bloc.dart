import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/remote_pipes/i_remote_pipes_repository.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remote_pipes_bloc.freezed.dart';
part 'remote_pipes_event.dart';
part 'remote_pipes_state.dart';

@injectable
class RemotePipesBloc extends Bloc<RemotePipesEvent, RemotePipesState> {
  RemotePipesBloc(this._remotePipesRepository)
      : super(RemotePipesState.initial());

  final IRemotePipesRepository _remotePipesRepository;

  @override
  Stream<RemotePipesState> mapEventToState(
    RemotePipesEvent event,
  ) async* {
    yield* event.map(
      initialized: (Initialized value) async* {},
      remotePipesDomainChanged: (RemotePipesDomainChanged value) async* {
        yield state.copyWith(
          remotePipesDomainName: RemotePipesDomain(value.remotePipesDomain),
        );
      },
      permissionChanged: (e) async* {
        // yield state.copyWith(
        //   permission: AddUserPermission(e.permission),
        //   addUserFailureOrSuccessOption: none(),
        // );
      },
      addRemotePipeUrl: (e) async* {
        final RemotePipesEntity remotePipesEntity =
            RemotePipesEntity.empty().copyWith(
          domainName: RemotePipesDomain(
            state.remotePipesDomainName.getOrCrash(),
          ),
        );

        final remotePipesSetDomainResponse = await _remotePipesRepository
            .setRemotePipesDomainName(remotePipesEntity);
      },
    );
  }
}
