import 'dart:ui';

import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/core/value_trasformers.dart';
import 'package:dartz/dartz.dart';

class FolderOfScenesColorValueObjects extends ValueObject<Color> {
  factory FolderOfScenesColorValueObjects(Color input) {
    assert(input != null);
    return FolderOfScenesColorValueObjects._(
      right(makeColorOpaque(input)),
    );
  }

  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];

  const FolderOfScenesColorValueObjects._(this.value);

  @override
  final Either<AuthValueFailure<Color>, Color> value;
}
