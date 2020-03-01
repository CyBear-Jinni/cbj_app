import 'package:flutter_test/flutter_test.dart';
import 'package:smart_home_flutter/injection.dart';

void main() {
  setUpAll(() {
    configureInjection(Env.test);
  });

  test(
    "should do something",
    () async {
      //  Arrange
//    final mock_example = getIt<IcunterRepository>();
//    when(mockCounterRepository.getIncrement()).thenReturn(123);
      // Act

      //  Assert
//    verify(mockCounterRepository.getIncrement()).called(10);
    },
  );
}
