import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_failures.freezed.dart';

@freezed
class VendorFailure<T> {
  const factory VendorFailure.empty({
    required T failedValue,
  }) = _Empty;

  const factory VendorFailure.unexpected() = _Unexpected;

  const factory VendorFailure.validateEmailNotEmpty() = _ValidateEmailNotEmpty;

  const factory VendorFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory VendorFailure.wifiIsClosed() = _wifiIsClosed;

  const factory VendorFailure.unableToUpdate() = _UnableToUpdate;
}
