import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  @override
  final Either<AuthValueFailure<String>, String> value;
}

class Password extends ValueObject<String> {
  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);

  @override
  final Either<AuthValueFailure<String>, String> value;
}
