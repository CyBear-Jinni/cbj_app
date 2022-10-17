import 'package:cybear_jinni/domain/room/room_failures.dart';
import 'package:dartz/dartz.dart';

Either<RoomFailure<String>, String> validateRoomNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      RoomFailure.empty(
        failedValue: input,
      ),
    );
  }
}

Either<RoomFailure<String>, String> validateRoomBackgroundNotEmpty(
  String input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      RoomFailure.empty(
        failedValue: input,
      ),
    );
  }
}

Either<RoomFailure<String>, String> validateRoomMaxNameLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      RoomFailure.exceedingLength(
        failedValue: input,
        max: maxLength,
      ),
    );
  }
}

Either<RoomFailure<List<String>>, List<String>> validateRoomTypesExist(
  List<String> input,
) {
  return right(input);
}

Either<RoomFailure<List<String>>, List<String>> validateRoomTypsValid(
  List<String> input,
) {
  return right(input);
}

Either<RoomFailure<List<String>>, List<String>> validateUserIdsValid(
  List<String> input,
) {
  return right(input);
}
