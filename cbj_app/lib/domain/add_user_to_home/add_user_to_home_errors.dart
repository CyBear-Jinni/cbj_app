import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';

class AddUserToHomeUnexpectedValueError extends Error {
  AddUserToHomeUnexpectedValueError(this.addUserValueFailure);

  final AddUserToHomeFailures addUserValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $addUserValueFailure');
  }
}
