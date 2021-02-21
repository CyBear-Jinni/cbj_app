import 'package:cybear_jinni/domain/add_user/add_user_errors.dart';
import 'package:cybear_jinni/domain/add_user/add_user_failures.dart';
import 'package:cybear_jinni/domain/add_user/add_user_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class AddUserValueObjectAbstract<T> {
  const AddUserValueObjectAbstract();

  Either<AddUserFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AddUserFailures]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw AddUserUnexpectedValueError(f), id);
  }

  Either<AddUserFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AddUserValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class AddUserEmail extends AddUserValueObjectAbstract<String> {
  @override
  final Either<AddUserFailures<String>, String> value;

  static const maxLength = 1000;

  factory AddUserEmail(String input) {
    assert(input != null);
    return AddUserEmail._(
      validateAddUserEmailNotEmpty(input),
    );
  }

  const AddUserEmail._(this.value);
}

class AddUserPermission extends AddUserValueObjectAbstract<String> {
  @override
  final Either<AddUserFailures<String>, String> value;

  factory AddUserPermission(String input) {
    assert(input != null);
    return AddUserPermission._(
      validateAddUserPermissionExist(input),
    );
  }

  const AddUserPermission._(this.value);
}
