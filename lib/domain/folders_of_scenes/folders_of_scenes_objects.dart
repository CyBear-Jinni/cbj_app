import 'package:cybear_jinni/domain/core/errors.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_error.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<FoldersOfScenesFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AuthValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedScenesValueError(f), id);
  }

  Either<FoldersOfScenesFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }
}
