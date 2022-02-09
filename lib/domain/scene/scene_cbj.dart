import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/infrastructure/scenes/scene_cbj_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene_cbj.freezed.dart';

@freezed
class SceneCbj with _$SceneCbj {
  const factory SceneCbj({
    /// The unique id of the scene, will alsow be used as the path id of the.
    required UniqueId uniqueId,

    /// Name of the automation, will be shown to the user.
    required String name,
    required int backgroundColor,

    /// All the automation as string.
    String? automationString,

    /// The actual id of the first node, most of the time will be the same as
    /// uniqueId variable.
    String? firstNodeId,

    /// The Unicode code point at which this icon is stored in the icon font.
    final int? iconCodePoint,
    String? image,
  }) = _SceneCbj;

  const SceneCbj._();

  SceneCbjDtos toInfrastructure() {
    return SceneCbjDtos(
      uniqueId: uniqueId.getOrCrash(),
      name: name,
      backgroundColor: backgroundColor,
      automationString: automationString,
      firstNodeId: firstNodeId,
      iconCodePoint: iconCodePoint,

      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
}
