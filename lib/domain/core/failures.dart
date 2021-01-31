import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Example how to use multiple failures types in one class
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
// const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
}

/// If multiple failures is not needed just call a specific failure class
@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    @required String failedValue,
  }) = InvalidEmail<T>;

  const factory AuthValueFailure.invalidPassword({
    @required String failedValue,
  }) = ShortPassword<T>;

  const factory AuthValueFailure.empty({
    @required String failedValue,
  }) = Empty<T>;

  const factory AuthValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
}
