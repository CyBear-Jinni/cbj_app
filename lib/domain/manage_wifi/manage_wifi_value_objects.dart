import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_errors.dart';
import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_failures.dart';
import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class ManageWiFiValueObjectAbstract<T> {
  const ManageWiFiValueObjectAbstract();

  Either<ManageWiFiFailures<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ManageWiFiFailures]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw ManageWiFiUnexpectedValueError(f), id);
  }

  Either<ManageWiFiFailures<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ManageWiFiValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class ManageWiFiName extends ManageWiFiValueObjectAbstract<String> {
  @override
  final Either<ManageWiFiFailures<String>, String> value;

  factory ManageWiFiName(String input) {
    assert(input != null);
    return ManageWiFiName._(
      validateMangageWiFiNameEmpty(input),
    );
  }

  const ManageWiFiName._(this.value);
}

class ManageWiFiPass extends ManageWiFiValueObjectAbstract<String> {
  @override
  final Either<ManageWiFiFailures<String>, String> value;

  factory ManageWiFiPass(String input) {
    assert(input != null);
    return ManageWiFiPass._(
      validateMangageWiFiNameEmpty(input),
    );
  }

  const ManageWiFiPass._(this.value);
}
