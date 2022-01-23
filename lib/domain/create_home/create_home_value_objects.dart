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
    return HomeUniqueId._(right(const Uuid().v1()));
  }

  factory HomeUniqueId.fromUniqueString(String uniqueId) {
    return HomeUniqueId._(right(uniqueId));
  }

  const HomeUniqueId._(this.value);

  @override
  final Either<CreateHomeFailure<String>, String> value;
}

class HomeName extends CreateHomeValueObjectAbstract<String> {
  factory HomeName(String input) {
    return HomeName._(
      validateCreateHomeNotEmpty(input),
    );
  }

  const HomeName._(this.value);

  @override
  final Either<CreateHomeFailure<String>, String> value;
}

class HomeDevicesUserId extends CreateHomeValueObjectAbstract<String> {
  factory HomeDevicesUserId() {
    return HomeDevicesUserId._(right(const Uuid().v1()));
  }

  const HomeDevicesUserId._(this.value);

  factory HomeDevicesUserId.fromUniqueString(String uniqueId) {
    return HomeDevicesUserId._(right(uniqueId));
  }

  @override
  final Either<CreateHomeFailure<String>, String> value;
}

class HomeDevicesUserEmail extends CreateHomeValueObjectAbstract<String> {
  factory HomeDevicesUserEmail(String input) {
    assert(input != null);
    return HomeDevicesUserEmail._(
      validateCreateHomeNotEmpty(input),
    );
  }

  const HomeDevicesUserEmail._(this.value);

  @override
  final Either<CreateHomeFailure<String>, String> value;
}

class HomeDevicesUserPassword extends CreateHomeValueObjectAbstract<String> {
  factory HomeDevicesUserPassword() {
    return HomeDevicesUserPassword._(right(const Uuid().v1()));
  }

  factory HomeDevicesUserPassword.fromUniqueString(String uniqueId) {
    return HomeDevicesUserPassword._(right(uniqueId));
  }

  const HomeDevicesUserPassword._(this.value);

  @override
  final Either<CreateHomeFailure<String>, String> value;
}
