import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'cbj_comp_entity.freezed.dart';

@freezed
abstract class CbjCompEntity implements _$CbjCompEntity {
  const factory CbjCompEntity({
    required CbjCompUniqueId id,
    required CbjCompRoomId roomId,
    required CbjCompLastKnownIp lastKnownIp,
    CbjCompDevices? cBJCompDevices,
    CbjCompDefaultName? name,
    CbjCompMacAddr? macAddr,
    CbjCompOs? compOs,
    CbjCompModel? compModel,
    CbjCompType? compType,

    /// The comp uuid that it came with out of the factory
    CbjCompUuid? compUuid,
  }) = _CbjCompEntity;

  const CbjCompEntity._();

  factory CbjCompEntity.empty() => CbjCompEntity(
        id: CbjCompUniqueId(),
        roomId: CbjCompRoomId(),
        lastKnownIp: CbjCompLastKnownIp(''),
        cBJCompDevices: CbjCompDevices(<GenericLightDE>[].toImmutableList()),
        name: CbjCompDefaultName(''),
        macAddr: CbjCompMacAddr(''),
        compOs: CbjCompOs(''),
        compModel: CbjCompModel(''),
        compType: CbjCompType(''),
        compUuid: CbjCompUuid(''),
      );

  Option<CbjCompFailure<dynamic>> get failureOption {
    return roomId.value.fold((f) => some(f), (_) => none());
  }
}
