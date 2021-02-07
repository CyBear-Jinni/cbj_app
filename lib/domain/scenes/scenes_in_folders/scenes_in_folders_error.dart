import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders_failures.dart';

class UnexpectedScenesValueError extends Error {
  UnexpectedScenesValueError(this.scenesInFoldersFailures);

  final ScenesInFoldersFailures scenesInFoldersFailures;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString(
        '$explanation Failure was: $scenesInFoldersFailures');
  }
}
