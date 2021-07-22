abstract class IHubConnectionRepository {
  Future<void> connectWithHub();

  Future<void> closeConnection();
}
