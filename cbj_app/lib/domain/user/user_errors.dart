import 'package:cybear_jinni/domain/user/user_failures.dart';

class UserUnexpectedValueError extends Error {
  UserUnexpectedValueError(this.userValueFailure);

  final UserFailures userValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $userValueFailure');
  }
}
