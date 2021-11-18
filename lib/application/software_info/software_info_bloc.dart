import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/software_info/i_software_info_repository.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'software_info_bloc.freezed.dart';
part 'software_info_event.dart';
part 'software_info_state.dart';

@injectable
class SoftwareInfoBloc extends Bloc<SoftwareInfoEvent, SoftwareInfoState> {
  SoftwareInfoBloc(this._remotePipesRepository)
      : super(SoftwareInfoState.initial());

  final ISoftwareInfoRepository _remotePipesRepository;

  @override
  Stream<SoftwareInfoState> mapEventToState(
    SoftwareInfoEvent event,
  ) async* {
    yield* event.map(
      initialized: (Initialized value) async* {},
      remotePipesDomainChanged: (SoftwareInfoDomainChanged value) async* {
        yield state.copyWith(
          remotePipesDomainName: SoftwareInfoDomain(value.remotePipesDomain),
        );
      },
      permissionChanged: (e) async* {
        // yield state.copyWith(
        //   permission: AddUserPermission(e.permission),
        //   addUserFailureOrSuccessOption: none(),
        // );
      },
      addRemotePipeUrl: (e) async* {
        final SoftwareInfoEntity remotePipesEntity =
            SoftwareInfoEntity.empty().copyWith(
          domainName: SoftwareInfoDomain(
            state.remotePipesDomainName.getOrCrash(),
          ),
        );

        final remotePipesSetDomainResponse = await _remotePipesRepository
            .setSoftwareInfoDomainName(remotePipesEntity);
      },
    );
  }
}
