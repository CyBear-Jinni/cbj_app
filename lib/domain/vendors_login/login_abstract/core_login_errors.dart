import 'package:cybear_jinni/domain/vendors_login/login_abstract/core_login_failures.dart';

class CoreLoginUnexpectedValueError extends Error {
  CoreLoginUnexpectedValueError(this.loginValueFailure);

  final CoreLoginFailure loginValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $loginValueFailure');
  }
}
