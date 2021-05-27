import 'package:cybear_jinni/domain/home_user/home_user_errors.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/home_user/home_user_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class HomeUserValueObjectAbstract<T> {
  const HomeUserValueObjectAbstract();

  Either<HomeUserFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [UserFailures]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw HomeUserUnexpectedValueError(f), id);
  }

  Either<HomeUserFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is HomeUserValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class HomeUserUniqueId extends HomeUserValueObjectAbstract<String?> {
  factory HomeUserUniqueId() {
    return HomeUserUniqueId._(right(Uuid().v1()));
  }

  factory HomeUserUniqueId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return HomeUserUniqueId._(right(uniqueId!));
  }

  HomeUserUniqueId._(this.value);

  @override
  final Either<HomeUserFailures<String>, String> value;
}

class HomeUserEmail extends HomeUserValueObjectAbstract<String?> {
  @override
  final Either<HomeUserFailures<String?>, String?> value;

  static const maxLength = 1000;

  factory HomeUserEmail(String? input) {
    assert(input != null);
    return HomeUserEmail._(
      validateHomeUserEmailNotEmpty(input),
    );
  }

  const HomeUserEmail._(this.value);
}

class HomeUserName extends HomeUserValueObjectAbstract<String?> {
  @override
  final Either<HomeUserFailures<String>, String> value;

  static const maxLength = 1000;

  factory HomeUserName(String input) {
    assert(input != null);
    return HomeUserName._(
      validateHomeUserNameNotEmpty(input),
    );
  }

  const HomeUserName._(this.value);
}

class HomeUserPermission extends HomeUserValueObjectAbstract<String?> {
  @override
  final Either<HomeUserFailures<String>, String> value;

  static const maxLength = 1000;

  factory HomeUserPermission(String input) {
    assert(input != null);
    return HomeUserPermission._(
      validateHomeUserNameNotEmpty(input),
    );
  }

  const HomeUserPermission._(this.value);
}
