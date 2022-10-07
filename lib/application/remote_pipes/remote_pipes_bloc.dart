import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/remote_pipes/i_remote_pipes_repository.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_value_objects.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remote_pipes_bloc.freezed.dart';
part 'remote_pipes_event.dart';
part 'remote_pipes_state.dart';

@injectable
class RemotePipesBloc extends Bloc<RemotePipesEvent, RemotePipesState> {
  RemotePipesBloc(this._remotePipesRepository)
      : super(RemotePipesState.initial()) {
    on<Initialized>(_initialized);
    on<RemotePipesDomainChanged>(_remotePipesDomainChanged);
    on<PermissionChanged>(_permissionChanged);
    on<AddRemotePipeUrl>(_addRemotePipeUrl);
  }

  final IRemotePipesRepository _remotePipesRepository;

  Future<void> _initialized(
    Initialized event,
    Emitter<RemotePipesState> emit,
  ) async {}

  Future<void> _remotePipesDomainChanged(
    RemotePipesDomainChanged event,
    Emitter<RemotePipesState> emit,
  ) async {
    emit(
      state.copyWith(
        remotePipesDomainName: RemotePipesDomain(event.remotePipesDomain),
      ),
    );
  }

  Future<void> _permissionChanged(
    PermissionChanged event,
    Emitter<RemotePipesState> emit,
  ) async {
    // emit( state.copyWith(
    //   permission: AddUserPermission(e.permission),
    //   addUserFailureOrSuccessOption: none(),
    // );
  }

  Future<void> _addRemotePipeUrl(
    AddRemotePipeUrl event,
    Emitter<RemotePipesState> emit,
  ) async {
    final RemotePipesEntity remotePipesEntity =
        RemotePipesEntity.empty().copyWith(
      domainName: RemotePipesDomain(
        state.remotePipesDomainName.getOrCrash(),
      ),
    );

    final remotePipesSetDomainResponse = await _remotePipesRepository
        .setRemotePipesDomainName(remotePipesEntity);
    Navigator.pop(event.context);
  }
}
