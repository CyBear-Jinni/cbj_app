import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_errors.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class AddUserToHomeValueObjectAbstract<T> {
  const AddUserToHomeValueObjectAbstract();

  Either<AddUserToHomeFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AddUserFailures]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw AddUserToHomeUnexpectedValueError(f), id);
  }

  Either<AddUserToHomeFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AddUserToHomeValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class AddUserToHomeUniqueId extends AddUserToHomeValueObjectAbstract<String> {
  factory AddUserToHomeUniqueId() {
    return AddUserToHomeUniqueId._(right(const Uuid().v1()));
  }

  factory AddUserToHomeUniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return AddUserToHomeUniqueId._(right(uniqueId));
  }

  const AddUserToHomeUniqueId._(this.value);

  @override
  final Either<AddUserToHomeFailures<String>, String> value;
}

class AddUserToHomeEmail extends AddUserToHomeValueObjectAbstract<String> {
  factory AddUserToHomeEmail(String input) {
    assert(input != null);
    return AddUserToHomeEmail._(
      validateAddUserToHomeEmailNotEmpty(input),
    );
  }

  const AddUserToHomeEmail._(this.value);

  @override
  final Either<AddUserToHomeFailures<String>, String> value;

  static const maxLength = 1000;
}

class AddUserToHomeName extends AddUserToHomeValueObjectAbstract<String> {
  factory AddUserToHomeName(String input) {
    assert(input != null);
    return AddUserToHomeName._(
      validateAddUserToHomeEmailNotEmpty(input),
    );
  }

  const AddUserToHomeName._(this.value);

  @override
  final Either<AddUserToHomeFailures<String>, String> value;
}

class AddUserToHomePermission extends AddUserToHomeValueObjectAbstract<String> {
  factory AddUserToHomePermission(String input) {
    assert(input != null);
    return AddUserToHomePermission._(
      validateAddUserToHomePermissionExist(input),
    );
  }

  const AddUserToHomePermission._(this.value);

  @override
  final Either<AddUserToHomeFailures<String>, String> value;
}
