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
  SoftwareInfoBloc() : super(SoftwareInfoState.initial()) {
    on<Initialized>(_initialized);
    on<GetSoftwareInfo>(_getSoftwareInfo);
  }

  Map<String, SoftwareInfoEntity> softwaresInfo = {};

  Future<void> _initialized(
    Initialized event,
    Emitter<SoftwareInfoState> emit,
  ) async {
    SoftwareInfoEntity? appInfoEntity;
    (await ISoftwareInfoRepository.instance.getAppSoftwareInfo()).fold(
      (l) => l,
      (r) {
        appInfoEntity = r;
      },
    );

    if (appInfoEntity != null) {
      softwaresInfo.addEntries([MapEntry('App Server', appInfoEntity!)]);
      emit(SoftwareInfoState.gotSoftwareInfoEntities(softwaresInfo));
    }

    SoftwareInfoEntity? hubInfoEntity;
    (await ISoftwareInfoRepository.instance.getHubSoftwareInfo()).fold(
      (l) => l,
      (r) {
        hubInfoEntity = r;
      },
    );

    if (hubInfoEntity != null) {
      softwaresInfo.addEntries([MapEntry('Hub Server', hubInfoEntity!)]);
      emit(SoftwareInfoState.initial());
      emit(SoftwareInfoState.gotSoftwareInfoEntities(softwaresInfo));
    }

    SoftwareInfoEntity? securityBearInfoEntity;
    (await ISoftwareInfoRepository.instance.getSecurityBearSoftwareInfo()).fold(
      (l) => l,
      (r) {
        securityBearInfoEntity = r;
      },
    );

    if (securityBearInfoEntity != null) {
      softwaresInfo.addEntries([
        MapEntry('Security Bear Server', securityBearInfoEntity!),
      ]);
      emit(SoftwareInfoState.initial());
      emit(SoftwareInfoState.gotSoftwareInfoEntities(softwaresInfo));
    }
  }

  Future<void> _getSoftwareInfo(
    GetSoftwareInfo event,
    Emitter<SoftwareInfoState> emit,
  ) async {}
}
