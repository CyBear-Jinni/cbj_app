import 'package:cybearjinni/domain/cbj_comp/cbj_comp_failures.dart';

class CBJCompUnexpectedValueError extends Error {
  CBJCompUnexpectedValueError(this.cBJCompFailure);

  final CBJCompFailure cBJCompFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $cBJCompFailure');
  }
}
