import 'package:cbj_integrations_controller/domain/core/failures.dart';
import 'package:cbj_integrations_controller/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input)
          .flatMap((result) => validateEmailWithoutSpace(result)),
    );
  }

  const EmailAddress._(this.value);

  @override
  final Either<AuthValueFailure<String>, String> value;
}

class Password extends ValueObject<String> {
  factory Password(String input) {
    return Password._(
      validatePasswordLength(input)
          .flatMap((result) => validatePasswordWithoutSpace(result)),
    );
  }

  const Password._(this.value);

  @override
  final Either<AuthValueFailure<String>, String> value;
}
