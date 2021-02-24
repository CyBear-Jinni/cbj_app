import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_failures.dart';
import 'package:dartz/dartz.dart';

Either<ManageWiFiFailures<String>, String> validateMangageWiFiNameEmpty(
    String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ManageWiFiFailures.empty(
      failedValue: input,
    ));
  }
}
