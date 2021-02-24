import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_failures.dart';

class ManageWiFiUnexpectedValueError extends Error {
  ManageWiFiUnexpectedValueError(this.homeUserValueFailure);

  final ManageWiFiFailures homeUserValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString(
        '$explanation Failure was: $homeUserValueFailure');
  }
}
