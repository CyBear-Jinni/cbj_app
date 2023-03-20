import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/scene/value_objects_scene_cbj.dart';
import 'package:cybear_jinni/infrastructure/scenes/scene_cbj_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene_cbj_entity.freezed.dart';

@freezed
class SceneCbjEntity with _$SceneCbjEntity {
  const factory SceneCbjEntity({
    /// The unique id of the scene, will alsow be used as the path id of the.
    required UniqueId uniqueId,

    /// Name of the automation, will be shown to the user.
    required SceneCbjName name,
    required SceneCbjBackgroundColor backgroundColor,

    /// Node-Red flow id of the scene
    required SceneCbjNodeRedFlowId nodeRedFlowId,

    /// All the automation as string.
    required SceneCbjAutomationString automationString,

    /// The actual id of the first node, most of the time will be the same as
    /// uniqueId variable.
    required SceneCbjFirstNodeId firstNodeId,

    /// The Unicode code point at which this icon is stored in the icon font.
    required SceneCbjIconCodePoint iconCodePoint,
    required SceneCbjBackgroundImage image,
    required SceneCbjLastDateOfExecute lastDateOfExecute,
    required SceneCbjStateMassage stateMassage,
    required SceneCbjSenderDeviceOs senderDeviceOs,
    required SceneCbjSenderDeviceModel senderDeviceModel,
    required SceneCbjSenderId senderId,
    required SceneCbjCompUuid compUuid,
    required SceneCbjDeviceStateGRPC entityStateGRPC,
  }) = _SceneCbjEntity;

  const SceneCbjEntity._();

  SceneCbjDtos toInfrastructure() {
    return SceneCbjDtos(
      uniqueId: uniqueId.getOrCrash(),
      name: name.getOrCrash(),
      backgroundColor: backgroundColor.getOrCrash(),
      automationString: automationString.getOrCrash(),
      nodeRedFlowId: nodeRedFlowId.getOrCrash(),
      firstNodeId: firstNodeId.getOrCrash(),
      iconCodePoint: iconCodePoint.getOrCrash(),
      image: image.getOrCrash(),
      lastDateOfExecute: lastDateOfExecute.getOrCrash(),
      entityStateGRPC: entityStateGRPC.getOrCrash(),
      senderDeviceModel: senderDeviceModel.getOrCrash(),
      senderDeviceOs: senderDeviceOs.getOrCrash(),
      senderId: senderId.getOrCrash(),
      compUuid: compUuid.getOrCrash(),
      stateMassage: stateMassage.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
}
