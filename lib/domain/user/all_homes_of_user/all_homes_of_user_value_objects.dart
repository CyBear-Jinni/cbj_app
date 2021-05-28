import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_errors.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class AllHomesOfUserValueObjectAbstract<T> {
  const AllHomesOfUserValueObjectAbstract();

  Either<AllHomesOfUserFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AllHomesOfUserUnexpectedValueError]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw AllHomesOfUserUnexpectedValueError(f), id);
  }

  Either<AllHomesOfUserFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AllHomesOfUserValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class AllHomesOfUserUniqueId
    extends AllHomesOfUserValueObjectAbstract<String?> {
  factory AllHomesOfUserUniqueId() {
    return AllHomesOfUserUniqueId._(right(const Uuid().v1()));
  }

  factory AllHomesOfUserUniqueId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return AllHomesOfUserUniqueId._(right(uniqueId));
  }

  const AllHomesOfUserUniqueId._(this.value);

  @override
  final Either<AllHomesOfUserFailures<String?>, String?> value;
}

class AllHomesOfUserName extends AllHomesOfUserValueObjectAbstract<String?> {
  factory AllHomesOfUserName(String? input) {
    assert(input != null);
    return AllHomesOfUserName._(
      validateAllHomesOfUserNameNotEmpty(input),
    );
  }

  const AllHomesOfUserName._(this.value);

  @override
  final Either<AllHomesOfUserFailures<String?>, String?> value;

  static const maxLength = 1000;
}
