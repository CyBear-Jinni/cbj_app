import 'package:cybear_jinni/domain/software_info/software_info_errors.dart';
import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:cybear_jinni/domain/software_info/software_info_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class SoftwareInfoValueObjectAbstract<T> {
  const SoftwareInfoValueObjectAbstract();

  Either<SoftwareInfoFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ManageWiFiFailures]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw SoftwareInfoUnexpectedValueError(f), id);
  }

  Either<SoftwareInfoFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is SoftwareInfoValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class SoftwareInfoDomain extends SoftwareInfoValueObjectAbstract<String> {
  factory SoftwareInfoDomain(String input) {
    assert(input != null);
    return SoftwareInfoDomain._(
      validateSoftwareInfoEmpty(input),
    );
  }

  const SoftwareInfoDomain._(this.value);

  @override
  final Either<SoftwareInfoFailures<String>, String> value;
}
