import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene_cbj_dtos.freezed.dart';
part 'scene_cbj_dtos.g.dart';

@freezed
abstract class SceneCbjDtos implements _$SceneCbjDtos {
  factory SceneCbjDtos({
    // @JsonKey(ignore: true)
    required String uniqueId,
    required String name,
    required int backgroundColor,
    String? automationString,
    String? firstNodeId,
    int? iconCodePoint,
    String? image,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _SceneCbjDtos;

  SceneCbjDtos._();

  factory SceneCbjDtos.fromDomain(SceneCbj sceneCbj) {
    return SceneCbjDtos(
      uniqueId: sceneCbj.uniqueId.getOrCrash(),
      name: sceneCbj.name,
      backgroundColor: sceneCbj.backgroundColor,
      automationString: sceneCbj.automationString,
      firstNodeId: sceneCbj.firstNodeId,
      iconCodePoint: sceneCbj.iconCodePoint,
      image: sceneCbj.image,
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory SceneCbjDtos.fromJson(Map<String, dynamic> json) =>
      _$SceneCbjDtosFromJson(json);

  @override
  final String deviceDtoClassInstance = (SceneCbjDtos).toString();

  SceneCbj toDomain() {
    return SceneCbj(
      uniqueId: UniqueId.fromUniqueString(uniqueId),
      name: name,
      backgroundColor: backgroundColor,
      automationString: automationString,
      firstNodeId: firstNodeId,
      iconCodePoint: iconCodePoint,
      image: image,
    );
  }
}
