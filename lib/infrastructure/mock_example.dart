import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@injectable
class MockExample extends Mock implements ICounter {}

class ICounter {}
