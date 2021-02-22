import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<AuthValueFailure<String>, String> validateUserAuth() {
  return right('true');
}
