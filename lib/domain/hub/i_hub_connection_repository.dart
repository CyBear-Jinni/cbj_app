import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IHubConnectionRepository {
  Future<void> connectWithHub();

  Future<void> closeConnection();

  Future<Either<HubFailures, Unit>> searchForHub();

  Future<void> saveHubIP(String hubIP);
}
