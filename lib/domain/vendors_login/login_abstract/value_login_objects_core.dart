import 'package:cybear_jinni/domain/vendors_login/login_abstract/core_login_errors.dart';
import 'package:cybear_jinni/domain/vendors_login/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors_login/login_abstract/core_login_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObjectCoreLogin<T> {
  const ValueObjectCoreLogin();

  Either<CoreLoginFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AuthValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw CoreLoginUnexpectedValueError(f), id);
  }

  Either<CoreLoginFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObjectCoreLogin<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class CoreLoginSenderId extends ValueObjectCoreLogin<String?> {
  factory CoreLoginSenderId() {
    return CoreLoginSenderId._(right(const Uuid().v1()));
  }

  factory CoreLoginSenderId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return CoreLoginSenderId._(right(uniqueId));
  }

  const CoreLoginSenderId._(this.value);

  @override
  final Either<CoreLoginFailure<String?>, String?> value;
}

class CoreLoginVendor extends ValueObjectCoreLogin<String> {
  factory CoreLoginVendor(String? input) {
    assert(input != null);
    return CoreLoginVendor._(
      validateLoginVendorExist(input!),
    );
  }

  const CoreLoginVendor._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}
