import 'package:isar/isar.dart';

part 'hub_entity_isar_model.g.dart';

@collection
class HubEntityIsarModel {
  Id id = Isar.autoIncrement;

  late String hubNetworkBssid;
  late String networkName;
  late String lastKnownIp;
}
