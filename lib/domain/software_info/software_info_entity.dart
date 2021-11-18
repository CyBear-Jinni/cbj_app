import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:cybear_jinni/domain/software_info/software_info_value_objects.dart';
import 'package:cybear_jinni/infrastructure/software_info/software_info_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'software_info_entity.freezed.dart';

@freezed
abstract class SoftwareInfoEntity implements _$SoftwareInfoEntity {
  const factory SoftwareInfoEntity({
    required SoftwareInfoDomain? domainName,
  }) = _SoftwareInfoEntity;

  const SoftwareInfoEntity._();

  factory SoftwareInfoEntity.empty() => SoftwareInfoEntity(
        domainName: SoftwareInfoDomain(''),
      );

  Option<SoftwareInfoFailures<dynamic>> get failureOption {
    return domainName!.value.fold((f) => some(f), (_) => none());
  }

  @override
  SoftwareInfoDtos toInfrastructure() {
    return SoftwareInfoDtos(
      domainName: domainName!.getOrCrash(),

      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
}
