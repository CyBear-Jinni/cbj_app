part of 'software_info_bloc.dart';

@freezed
class SoftwareInfoState with _$SoftwareInfoState {
  factory SoftwareInfoState.initial() = Initial;

  factory SoftwareInfoState.gotSoftwareInfoEntities(
    Map<String, SoftwareInfoEntity> softwareInfoEntities,
  ) = GotSoftwareInfoEntities;
}
