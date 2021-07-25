import 'package:cybear_jinni/domain/vendors/vendor_errors.dart';
import 'package:cybear_jinni/domain/vendors/vendor_failures.dart';
import 'package:cybear_jinni/domain/vendors/vendor_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class VendorValueObjectAbstract<T> {
  const VendorValueObjectAbstract();

  Either<VendorFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [VendorFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw VendorUnexpectedValueError(f), id);
  }

  Either<VendorFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is VendorValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class VendorName extends VendorValueObjectAbstract<String> {
  factory VendorName(String input) {
    assert(input != null);
    return VendorName._(
      validVendorNameNotEmpty(input),
    );
  }

  const VendorName._(this.value);

  @override
  final Either<VendorFailure<String>, String> value;
}
