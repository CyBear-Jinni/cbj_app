import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_login_failures.freezed.dart';

/// Example how to use multiple failures types in one class
@freezed
class CoreLoginValueFailure<T> with _$CoreLoginValueFailure<T> {
  const factory CoreLoginValueFailure.auth(CoreLoginFailure<T> f) = _Auth<T>;
}

@freezed
class CoreLoginFailure<T> {
  const factory CoreLoginFailure.unexpected() = _Unexpected<T>;

  const factory CoreLoginFailure.empty({
    required String failedValue,
  }) = _Empty<T>;

  const factory CoreLoginFailure.exceedingLength({
    required String failedValueFailure,
    required int max,
  }) = _ExceedingLength<T>;
}
