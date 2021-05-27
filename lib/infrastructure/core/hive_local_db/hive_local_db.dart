import 'package:hive/hive.dart';

class HiveLocalDbHelper {
  static const String boxNameBox = 'LocalData';
  static const String homeBox = 'home';
  static const String homeIdBox = 'homeId';

  //
  // static Future<void> saveHome({
  //   required String id,
  //   required String defaultName,
  // }) async {
  //   var path = Directory.current.path;
  //   // Hive..registerAdapter(HomeHiveAdapter());
  //
  //   var box = await Hive.openBox(boxName);
  //
  //   var home = HomeHive()
  //     ..id = id
  //     ..defaultName = defaultName;
  //
  //   await box.put('home', home);
  // }
  //
  // static Future<HomeHive> getHomeFromLocalDb() async {
  //   final box = await Hive.openBox(boxName);
  //
  //   return box.get('home') as HomeHive;
  // }

  static Future<void> setHomeId(String homeId) async {
    final box = await Hive.openBox(boxNameBox);
    await box.put(homeIdBox, homeId);
    print(box.get(homeIdBox).toString());
  }

  static Future<String> getHomeId() async {
    final box = await Hive.openBox(boxNameBox);
    print(box.get(homeIdBox).toString());

    return box.get(homeIdBox).toString();
  }
}
