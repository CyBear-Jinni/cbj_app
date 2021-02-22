import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_home_failure.freezed.dart';

@freezed
abstract class CreateHomeFailure with _$CreateHomeFailure {
  const factory CreateHomeFailure.unexpected() = _Unexpected;

  const factory CreateHomeFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory CreateHomeFailure.unableToUpdate() = _UnableToUpdate;
}
