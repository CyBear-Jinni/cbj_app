import 'package:isar/isar.dart';

part 'home_entity_isar_model.g.dart';

@collection
class HomeEntityIsarModel {
  Id id = Isar.autoIncrement;

  late String homeId;
}
