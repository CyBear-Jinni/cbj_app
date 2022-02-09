import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene_cbj_failures.freezed.dart';

@freezed
class SceneCbjFailure with _$SceneCbjFailure {
  const factory SceneCbjFailure.unexpected() = _Unexpected;

  const factory SceneCbjFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory SceneCbjFailure.unableToUpdate() = _UnableToUpdate;
}
