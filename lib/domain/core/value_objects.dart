import 'package:cybear_jinni/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> {
  ValueObject();

  Either<ValueFailure<T>, T> value;

  @override
  bool operator ==(ObjectKey o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
