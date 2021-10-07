import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_login_failures.freezed.dart';

/// Example how to use multiple failures types in one class
@freezed
class CoreLoginValueFailure<T> with _$CoreLoginValueFailure<T> {
  const factory CoreLoginValueFailure.auth(CoreLoginFailure<T> f) = _Auth<T>;
}

@freezed
class CoreLoginFailure<T> {
  const factory CoreLoginFailure.empty({
    required T failedValue,
  }) = _Empty<T>;

  const factory CoreLoginFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength<T>;
}
