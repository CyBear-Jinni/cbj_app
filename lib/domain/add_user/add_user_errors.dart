import 'package:cybear_jinni/domain/add_user/add_user_failures.dart';

class AddUserUnexpectedValueError extends Error {
  AddUserUnexpectedValueError(this.addUserValueFailure);

  final AddUserFailures addUserValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $addUserValueFailure');
  }
}
