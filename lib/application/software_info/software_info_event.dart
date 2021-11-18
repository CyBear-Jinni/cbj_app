part of 'software_info_bloc.dart';

@freezed
class SoftwareInfoEvent with _$SoftwareInfoEvent {
  const factory SoftwareInfoEvent.initialized() = Initialized;

  const factory SoftwareInfoEvent.remotePipesDomainChanged(
    String remotePipesDomain,
  ) = SoftwareInfoDomainChanged;

  const factory SoftwareInfoEvent.permissionChanged(String permission) =
      PermissionChanged;

  const factory SoftwareInfoEvent.addRemotePipeUrl() = AddRemotePipeUrl;
}
