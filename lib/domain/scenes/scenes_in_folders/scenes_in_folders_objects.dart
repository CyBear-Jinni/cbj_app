import 'package:cybear_jinni/domain/core/errors.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders_error.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ScenesInFoldersFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AuthValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedScenesValueError(f), id);
  }

  Either<ScenesInFoldersFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }
}
