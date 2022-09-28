import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_entity.dart';
import 'package:cybear_jinni/domain/scene/value_objects_scene_cbj.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene_cbj_dtos.freezed.dart';
part 'scene_cbj_dtos.g.dart';

@freezed
abstract class SceneCbjDtos implements _$SceneCbjDtos {
  factory SceneCbjDtos({
    // @JsonKey(ignore: true)
    required String uniqueId,
    required String name,
    required String backgroundColor,
    required String? deviceStateGRPC,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? compUuid,
    required String? stateMassage,
    String? automationString,
    String? nodeRedFlowId,
    String? firstNodeId,
    String? iconCodePoint,
    String? image,
    String? lastDateOfExecute,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _SceneCbjDtos;

  SceneCbjDtos._();

  factory SceneCbjDtos.fromDomain(SceneCbjEntity sceneCbj) {
    return SceneCbjDtos(
      uniqueId: sceneCbj.uniqueId.getOrCrash(),
      name: sceneCbj.name.getOrCrash(),
      backgroundColor: sceneCbj.backgroundColor.getOrCrash(),
      automationString: sceneCbj.automationString.getOrCrash(),
      nodeRedFlowId: sceneCbj.nodeRedFlowId.getOrCrash(),
      firstNodeId: sceneCbj.firstNodeId.getOrCrash(),
      iconCodePoint: sceneCbj.iconCodePoint.getOrCrash(),
      image: sceneCbj.image.getOrCrash(),
      lastDateOfExecute: sceneCbj.lastDateOfExecute.getOrCrash(),
      deviceStateGRPC: sceneCbj.deviceStateGRPC.getOrCrash(),
      senderDeviceModel: sceneCbj.senderDeviceModel.getOrCrash(),
      senderDeviceOs: sceneCbj.senderDeviceOs.getOrCrash(),
      senderId: sceneCbj.senderId.getOrCrash(),
      compUuid: sceneCbj.compUuid.getOrCrash(),
      stateMassage: sceneCbj.stateMassage.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory SceneCbjDtos.fromJson(Map<String, dynamic> json) =>
      _$SceneCbjDtosFromJson(json);

  final String deviceDtoClassInstance = (SceneCbjDtos).toString();

  SceneCbjEntity toDomain() {
    return SceneCbjEntity(
      uniqueId: UniqueId.fromUniqueString(uniqueId),
      name: SceneCbjName(name),
      backgroundColor: SceneCbjBackgroundColor(backgroundColor),
      automationString: SceneCbjAutomationString(automationString),
      nodeRedFlowId: SceneCbjNodeRedFlowId(nodeRedFlowId),
      firstNodeId: SceneCbjFirstNodeId(firstNodeId),
      iconCodePoint: SceneCbjIconCodePoint(iconCodePoint),
      image: SceneCbjBackgroundImage(image),
      lastDateOfExecute: SceneCbjLastDateOfExecute(lastDateOfExecute),
      deviceStateGRPC: SceneCbjDeviceStateGRPC(deviceStateGRPC),
      senderDeviceModel: SceneCbjSenderDeviceModel(senderDeviceModel),
      senderDeviceOs: SceneCbjSenderDeviceOs(senderDeviceOs),
      senderId: SceneCbjSenderId(senderId),
      compUuid: SceneCbjCompUuid(compUuid),
      stateMassage: SceneCbjStateMassage(stateMassage),
    );
  }
}
