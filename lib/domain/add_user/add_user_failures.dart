import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_failures.freezed.dart';

@freezed
abstract class AddUserFailures<T> {
  const factory AddUserFailures.empty({
    @required T failedValue,
  }) = _Empty;

  const factory AddUserFailures.unexpected() = _Unexpected;
  const factory AddUserFailures.validateEmailNotEmpty() =
      _ValidateEmailNotEmpty;

  const factory AddUserFailures.insufficientPermission() =
      _InsufficientPermission;

  const factory AddUserFailures.cancelledByUser() = CancelledByUser;

  const factory AddUserFailures.serverError() = ServerError;

  const factory AddUserFailures.emailAlreadyExist() = EmailAlreadyExist;

  const factory AddUserFailures.cannotFindUser() = CannotFindUser;
}
