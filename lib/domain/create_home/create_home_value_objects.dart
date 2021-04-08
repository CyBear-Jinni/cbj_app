import 'package:cybear_jinni/domain/create_home/create_home_errors.dart';
import 'package:cybear_jinni/domain/create_home/create_home_failure.dart';
import 'package:cybear_jinni/domain/create_home/create_home_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class CreateHomeValueObjectAbstract<T> {
  const CreateHomeValueObjectAbstract();

  Either<CreateHomeFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [CreateHomeFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw CreateHomeUnexpectedValueError(f), id);
  }

  Either<CreateHomeFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is CreateHomeValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class HomeUniqueId extends CreateHomeValueObjectAbstract<String> {
  factory HomeUniqueId() {
    return HomeUniqueId._(right(Uuid().v1()));
  }

  factory HomeUniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return HomeUniqueId._(right(uniqueId));
  }

  HomeUniqueId._(this.value);

  @override
  final Either<CreateHomeFailure<String>, String> value;
}

class HomeName extends CreateHomeValueObjectAbstract<String> {
  @override
  final Either<CreateHomeFailure<String>, String> value;

  factory HomeName(String input) {
    assert(input != null);
    return HomeName._(
      validateCreateHomeNotEmpty(input),
    );
  }

  const HomeName._(this.value);
}

class HomeDevicesUserId extends CreateHomeValueObjectAbstract<String> {
  factory HomeDevicesUserId() {
    return HomeDevicesUserId._(right(Uuid().v1()));
  }

  factory HomeDevicesUserId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return HomeDevicesUserId._(right(uniqueId));
  }

  HomeDevicesUserId._(this.value);

  @override
  final Either<CreateHomeFailure<String>, String> value;
}

class HomeDevicesUserEmail extends CreateHomeValueObjectAbstract<String> {
  @override
  final Either<CreateHomeFailure<String>, String> value;

  factory HomeDevicesUserEmail(String input) {
    assert(input != null);
    return HomeDevicesUserEmail._(
      validateCreateHomeNotEmpty(input),
    );
  }

  const HomeDevicesUserEmail._(this.value);
}

class HomeDevicesUserPassword extends CreateHomeValueObjectAbstract<String> {
  factory HomeDevicesUserPassword() {
    return HomeDevicesUserPassword._(right(Uuid().v1()));
  }

  factory HomeDevicesUserPassword.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return HomeDevicesUserPassword._(right(uniqueId));
  }

  HomeDevicesUserPassword._(this.value);

  @override
  final Either<CreateHomeFailure<String>, String> value;
}
