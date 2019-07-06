import 'cloudFireStore.dart';

class DataBaseController {
  CloudFireStore _cloudFireStore;
  DataBaseController() {
    _cloudFireStore = new CloudFireStore();
  }

  Future<String> getData(String dataPath, String fieldName) async {
    return await _cloudFireStore.getData(dataPath, fieldName);
  }

  Future<String> getDataWhenChange(String dataPath, String fieldName) async {
    String dataInPath = await _cloudFireStore.getData(dataPath, fieldName);
    String dataInPathNew;
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      dataInPathNew = await getData(dataPath, fieldName);
      if (dataInPathNew != dataInPath) {
        return dataInPathNew;
      }
    }
  }

  // TODO: Write the code
  Future<String> setData(String dataPath, Object objectToInsert) async {
    return null;
  }
}
