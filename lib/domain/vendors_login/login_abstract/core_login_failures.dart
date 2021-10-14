import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_login_failures.freezed.dart';

@freezed
class CoreLoginFailure<T> {
  const factory CoreLoginFailure.empty({
    required T failedValue,
  }) = _Empty;

  const factory CoreLoginFailure.actionExcecuter({
    required T failedValue,
  }) = _ActionExcecuter;

  const factory CoreLoginFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength;

  const factory CoreLoginFailure.unexpected() = _Unexpected;

  const factory CoreLoginFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory CoreLoginFailure.unableToUpdate() = _UnableToUpdate;

  const factory CoreLoginFailure.loginActionDoesNotExist() =
      _LoginActionDoesNotExist;

  const factory CoreLoginFailure.loginTypeDoesNotExist() =
      _LoginTypeDoesNotExist;
}
