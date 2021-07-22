import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene_failures.freezed.dart';

@freezed
class SceneFailure with _$SceneFailure {
  const factory SceneFailure.unexpected() = _Unexpected;

  const factory SceneFailure.insufficientPermission() = _InsufficientPermission;

  const factory SceneFailure.unableToUpdate() = _UnableToUpdate;
}
