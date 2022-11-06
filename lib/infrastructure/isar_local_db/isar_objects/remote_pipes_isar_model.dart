import 'package:isar/isar.dart';

part 'remote_pipes_isar_model.g.dart';

@collection
class RemotePipesIsarModel {
  Id id = Isar.autoIncrement;

  late String domainName;
}
