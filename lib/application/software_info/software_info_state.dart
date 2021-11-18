part of 'software_info_bloc.dart';

@freezed
class SoftwareInfoState with _$SoftwareInfoState {
  const factory SoftwareInfoState({
    required SoftwareInfoDomain remotePipesDomainName,
  }) = _SoftwareInfoState;

  factory SoftwareInfoState.initial() => SoftwareInfoState(
        remotePipesDomainName: SoftwareInfoDomain(''),
      );
}
