import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/routine/value_objects_routine_cbj.dart';
import 'package:cybear_jinni/infrastructure/routines/routine_cbj_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_cbj_entity.freezed.dart';

@freezed
class RoutineCbjEntity with _$RoutineCbjEntity {
  const factory RoutineCbjEntity({
    /// The unique id of the routine, will alsow be used as the path id of the.
    required UniqueId uniqueId,

    /// Name of the automation, will be shown to the user.
    required RoutineCbjName name,
    required RoutineCbjBackgroundColor backgroundColor,

    /// All the automation as string.
    required RoutineCbjAutomationString automationString,

    /// The actual id of the first node, most of the time will be the same as
    /// uniqueId variable.
    required RoutineCbjFirstNodeId firstNodeId,

    /// The Unicode code point at which this icon is stored in the icon font.
    required RoutineCbjIconCodePoint iconCodePoint,
    required RoutineCbjBackgroundImage image,
    required RoutineCbjLastDateOfExecute lastDateOfExecute,
    required RoutineCbjStateMassage stateMassage,
    required RoutineCbjSenderDeviceOs senderDeviceOs,
    required RoutineCbjSenderDeviceModel senderDeviceModel,
    required RoutineCbjSenderId senderId,
    required RoutineCbjCompUuid compUuid,
    required RoutineCbjDeviceStateGRPC deviceStateGRPC,
  }) = _RoutineCbjEntity;

  const RoutineCbjEntity._();

  RoutineCbjDtos toInfrastructure() {
    return RoutineCbjDtos(
      uniqueId: uniqueId.getOrCrash(),
      name: name.getOrCrash(),
      backgroundColor: backgroundColor.getOrCrash(),
      automationString: automationString.getOrCrash(),
      firstNodeId: firstNodeId.getOrCrash(),
      iconCodePoint: iconCodePoint.getOrCrash(),

      image: image.getOrCrash(),
      lastDateOfExecute: lastDateOfExecute.getOrCrash(),
      deviceStateGRPC: deviceStateGRPC.getOrCrash(),
      senderDeviceModel: senderDeviceModel.getOrCrash(),
      senderDeviceOs: senderDeviceOs.getOrCrash(),
      senderId: senderId.getOrCrash(),
      compUuid: compUuid.getOrCrash(),
      stateMassage: stateMassage.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
}
