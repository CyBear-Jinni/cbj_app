import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'scene.freezed.dart';

@freezed
abstract class Scene with _$Scene {
  const Scene._();

  const factory Scene({
    @required UniqueId uniqueId,
    @required String name,
    @required KtList<String> scenesActionsToExecute,
    Color backgroundColor,
    IconData icon,
    String image,
  }) = _Scene;
}
