import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_wifi_failures.freezed.dart';

@freezed
abstract class ManageWiFiFailures<T> {
  const factory ManageWiFiFailures.empty({
    @required T failedValue,
  }) = _Empty;

  const factory ManageWiFiFailures.unexpected() = _Unexpected;
  const factory ManageWiFiFailures.validateEmailNotEmpty() =
      _ValidateEmailNotEmpty;

  const factory ManageWiFiFailures.insufficientPermission() =
      _InsufficientPermission;

  const factory ManageWiFiFailures.wifiIsClosed() = _wifiIsClosed;

  const factory ManageWiFiFailures.unableToUpdate() = _UnableToUpdate;
}
