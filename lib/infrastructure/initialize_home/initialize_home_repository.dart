import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/initialize_home/i_initialize_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IInitializeHomeRepository)
class InitializeHomeRepository implements IInitializeHomeRepository {
  InitializeHomeRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Option<Unit>> initializingNewHome() async {
    try {
      final String fullPath = '/SmartHomes/BarHome2/Users/t';
      Map<String, dynamic> data = {
        'Name': 'bar',
      };

      await FirebaseFirestore.instance.doc(fullPath).set(data);
      // right(true);
      return optionOf(unit);
    } catch (e) {
      return optionOf(null);
    }
  }
}
