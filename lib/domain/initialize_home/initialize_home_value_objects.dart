import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/initialize_home/smart_home_validators.dart';
import 'package:dartz/dartz.dart';

class InitializeBackend extends ValueObject<String> {
  factory InitializeBackend() {
    return InitializeBackend._(
      validateUserAuth(),
    );
  }

  const InitializeBackend._(this.value);

  @override
  final Either<AuthValueFailure<String>, String> value;
}
