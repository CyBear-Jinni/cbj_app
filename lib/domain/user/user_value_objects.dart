import 'package:cybear_jinni/domain/user/user_errors.dart';
import 'package:cybear_jinni/domain/user/user_failures.dart';
import 'package:cybear_jinni/domain/user/user_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class UserValueObjectAbstract<T> {
  const UserValueObjectAbstract();

  Either<UserFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [UserFailures]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UserUnexpectedValueError(f), id);
  }

  Either<UserFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is UserValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class UserUniqueId extends UserValueObjectAbstract<String> {
  factory UserUniqueId() {
    return UserUniqueId._(right(Uuid().v1()));
  }

  factory UserUniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UserUniqueId._(right(uniqueId));
  }

  UserUniqueId._(this.value);

  @override
  final Either<UserFailures<String>, String> value;
}

class UserEmail extends UserValueObjectAbstract<String> {
  @override
  final Either<UserFailures<String>, String> value;

  static const maxLength = 1000;

  factory UserEmail(String input) {
    assert(input != null);
    return UserEmail._(
      validateUserEmailNotEmpty(input),
    );
  }

  const UserEmail._(this.value);
}

class UserName extends UserValueObjectAbstract<String> {
  @override
  final Either<UserFailures<String>, String> value;

  static const maxLength = 1000;

  factory UserName(String input) {
    assert(input != null);
    return UserName._(
      validateUserNameNotEmpty(input),
    );
  }

  const UserName._(this.value);
}
