import 'package:freezed_annotation/freezed_annotation.dart';

part 'cbj_comp_failures.freezed.dart';

@freezed
abstract class CBJCompFailure<T> {
  const factory CBJCompFailure.empty({
    required T failedValue,
  }) = _Empty;

  const factory CBJCompFailure.actionExcecuter({
    required T failedValue,
  }) = _ActionExcecuter;

  const factory CBJCompFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength;

  const factory CBJCompFailure.unexpected() = _Unexpected;

  const factory CBJCompFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory CBJCompFailure.unableToUpdate() = _UnableToUpdate;
}
