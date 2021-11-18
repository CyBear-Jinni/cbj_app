part of 'software_info_bloc.dart';

@freezed
class SoftwareInfoEvent with _$SoftwareInfoEvent {
  const factory SoftwareInfoEvent.initialized() = Initialized;

  const factory SoftwareInfoEvent.getSoftwareInfo() = GetSoftwareInfo;
}
