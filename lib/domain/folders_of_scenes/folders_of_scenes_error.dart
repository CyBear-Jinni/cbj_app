import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';

class UnexpectedScenesValueError extends Error {
  UnexpectedScenesValueError(this.foldersOfScenesFailures);

  final FoldersOfScenesFailures foldersOfScenesFailures;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString(
        '$explanation Failure was: $foldersOfScenesFailures');
  }
}
