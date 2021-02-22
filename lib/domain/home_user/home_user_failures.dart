import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_user_failures.freezed.dart';

@freezed
abstract class HomeUserFailures<T> {
  const factory HomeUserFailures.empty({
    @required T failedValue,
  }) = _Empty;

  const factory HomeUserFailures.unexpected() = _Unexpected;
  const factory HomeUserFailures.validateEmailNotEmpty() =
      _ValidateEmailNotEmpty;

  const factory HomeUserFailures.insufficientPermission() =
      _InsufficientPermission;

  const factory HomeUserFailures.homeDoesNotExist() = _HomeDoesNotExist;

  const factory HomeUserFailures.unableToUpdate() = _UnableToUpdate;
}
