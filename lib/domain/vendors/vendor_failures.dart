import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_failures.freezed.dart';

/// Example how to use multiple failures types in one class
@freezed
class VendorValueFailure<T> with _$VendorValueFailure<T> {
  const factory VendorValueFailure.auth(VendorFailure<T> f) = _Auth<T>;
}

@freezed
class VendorFailure<T> {
  const factory VendorFailure.empty({
    required T failedValue,
  }) = _Empty<T>;

  const factory VendorFailure.unexpected() = _Unexpected<T>;

  const factory VendorFailure.validateEmailNotEmpty() =
      _ValidateEmailNotEmpty<T>;

  const factory VendorFailure.insufficientPermission() =
      _InsufficientPermission<T>;

  const factory VendorFailure.wifiIsClosed() = _wifiIsClosed<T>;

  const factory VendorFailure.unableToUpdate() = _UnableToUpdate<T>;

  const factory VendorFailure.vendorTypeDoesNotExist() =
      _VendorTypeDoesNotExist<T>;

  const factory VendorFailure.loginTypeDoesNotExist() =
      _LoginTypeDoesNotExist<T>;
}

// /// If multiple failures is not needed just call a specific failure class
// @freezed
// class AuthValueFailure<T> with _$AuthValueFailure<T> {
//   const factory AuthValueFailure.invalidEmail({
//     required String failedValue,
//   }) = InvalidEmail<T>;
//
//   const factory AuthValueFailure.invalidPassword({
//     required String failedValue,
//   }) = InvalidPassword<T>;
//
//   const factory AuthValueFailure.shortPassword({
//     required String failedValue,
//   }) = ShortPassword<T>;
//
//   const factory AuthValueFailure.containsSpace({
//     required String failedValue,
//   }) = ContainsSpace<T>;
//
//   const factory AuthValueFailure.empty({
//     required String failedValue,
//   }) = Empty<T>;
//
//   const factory AuthValueFailure.listTooLong({
//     required T failedValue,
//     required int max,
//   }) = ListTooLong<T>;
// }
