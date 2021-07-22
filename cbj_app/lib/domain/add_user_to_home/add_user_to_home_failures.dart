import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_to_home_failures.freezed.dart';

@freezed
class AddUserToHomeFailures<T> {
  const factory AddUserToHomeFailures.empty({
    required T failedValue,
  }) = _Empty;

  const factory AddUserToHomeFailures.unexpected() = _Unexpected;

  const factory AddUserToHomeFailures.validateEmailNotEmpty() =
      _ValidateEmailNotEmpty;

  const factory AddUserToHomeFailures.insufficientPermission() =
      _InsufficientPermission;

  const factory AddUserToHomeFailures.cancelledByUser() = CancelledByUser;

  const factory AddUserToHomeFailures.serverError() = ServerError;

  const factory AddUserToHomeFailures.emailAlreadyExist() = EmailAlreadyExist;

  const factory AddUserToHomeFailures.cannotFindUser() = CannotFindUser;
}
