import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'cbj_comp_entity.freezed.dart';

@freezed
abstract class CBJCompEntity implements _$CBJCompEntity {
  const factory CBJCompEntity({
    required CBJCompUniqueId id,
    required CBJCompRoomId roomId,
    required CBJCompLastKnownIp lastKnownIp,
    CBJCompDevices? cBJCompDevices,
    CBJCompDefaultName? name,
    CBJCompMacAddr? macAddr,
    CBJCompOs? compOs,
    CBJCompModel? compModel,
    CBJCompType? compType,

    /// The comp uuid that it came with out of the factory
    CBJCompUuid? compUuid,
  }) = _CBJCompEntity;

  const CBJCompEntity._();

  factory CBJCompEntity.empty() => CBJCompEntity(
        id: CBJCompUniqueId(),
        roomId: CBJCompRoomId(),
        lastKnownIp: CBJCompLastKnownIp(''),
        cBJCompDevices: CBJCompDevices(<GenericLightDE>[].toImmutableList()),
        name: CBJCompDefaultName(''),
        macAddr: CBJCompMacAddr(''),
        compOs: CBJCompOs(''),
        compModel: CBJCompModel(''),
        compType: CBJCompType(''),
        compUuid: CBJCompUuid(''),
      );

  Option<CBJCompFailure<dynamic>> get failureOption {
    return roomId.value.fold((f) => some(f), (_) => none());
  }
}
