import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/create_home/smart_home_validators.dart';
import 'package:dartz/dartz.dart';

class CreateBackend extends ValueObject<String> {
  factory CreateBackend() {
    return CreateBackend._(
      validateUserAuth(),
    );
  }

  const CreateBackend._(this.value);

  @override
  final Either<AuthValueFailure<String>, String> value;
}
