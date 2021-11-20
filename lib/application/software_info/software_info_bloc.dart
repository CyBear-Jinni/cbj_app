import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/software_info/i_software_info_repository.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'software_info_bloc.freezed.dart';
part 'software_info_event.dart';
part 'software_info_state.dart';

@injectable
class SoftwareInfoBloc extends Bloc<SoftwareInfoEvent, SoftwareInfoState> {
  SoftwareInfoBloc(this._softwareInfoRepository)
      : super(SoftwareInfoState.initial());

  final ISoftwareInfoRepository _softwareInfoRepository;

  Map<String, SoftwareInfoEntity> softwaresInfo = {};

  @override
  Stream<SoftwareInfoState> mapEventToState(
    SoftwareInfoEvent event,
  ) async* {
    yield* event.map(
      initialized: (Initialized value) async* {
        SoftwareInfoEntity? appInfoEntity;
        (await _softwareInfoRepository.getAppSoftwareInfo()).fold(
          (l) => l,
          (r) {
            appInfoEntity = r;
          },
        );

        if (appInfoEntity != null) {
          softwaresInfo.addEntries([MapEntry('App Server', appInfoEntity!)]);
          yield SoftwareInfoState.gotSoftwareInfoEntities(softwaresInfo);
        }

        SoftwareInfoEntity? hubInfoEntity;
        (await _softwareInfoRepository.getHubSoftwareInfo()).fold(
          (l) => l,
          (r) {
            hubInfoEntity = r;
          },
        );

        if (hubInfoEntity != null) {
          softwaresInfo.addEntries([MapEntry('Hub Server', hubInfoEntity!)]);
          yield SoftwareInfoState.initial();
          yield SoftwareInfoState.gotSoftwareInfoEntities(softwaresInfo);
        }

        SoftwareInfoEntity? securityBearInfoEntity;
        (await _softwareInfoRepository.getSecurityBearSoftwareInfo()).fold(
          (l) => l,
          (r) {
            securityBearInfoEntity = r;
          },
        );

        if (securityBearInfoEntity != null) {
          softwaresInfo.addEntries([
            MapEntry('Security Bear Server', securityBearInfoEntity!),
          ]);
          yield SoftwareInfoState.initial();
          yield SoftwareInfoState.gotSoftwareInfoEntities(softwaresInfo);
        }
      },
      getSoftwareInfo: (GetSoftwareInfo value) async* {},
    );
  }
}
