import 'package:freezed_annotation/freezed_annotation.dart';

part 'initialize_home_failure.freezed.dart';

@freezed
abstract class InitializeHomeFailure with _$InitializeHomeFailure {
  const factory InitializeHomeFailure.unexpected() = _Unexpected;

  const factory InitializeHomeFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory InitializeHomeFailure.unableToUpdate() = _UnableToUpdate;
}
