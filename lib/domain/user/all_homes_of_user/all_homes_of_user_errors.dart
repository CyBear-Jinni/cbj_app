import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';

class AllHomesOfUserUnexpectedValueError extends Error {
  AllHomesOfUserUnexpectedValueError(this.allHomesOfUserFailures);

  final AllHomesOfUserFailures allHomesOfUserFailures;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString(
      '$explanation Failure was: $allHomesOfUserFailures',
    );
  }
}
