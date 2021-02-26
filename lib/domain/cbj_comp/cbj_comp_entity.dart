import 'package:cybear_jinni/domain/auth/user.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'cbj_comp_entity.freezed.dart';

@freezed
abstract class CBJCompEntity implements _$CBJCompEntity {
  const CBJCompEntity._();

  const factory CBJCompEntity({
    @required CBJCompUniqueId id,
    @required CBJCompRoomId roomId,
    CBJCompDevices cBJCompDevices,
    CBJCompDefaultName name,
    CBJCompMacAddr macAddr,
    CBJCompOs compOs,
    CBJCompModel compModel,
    CBJCompType compType,
  }) = _CBJCompEntity;

  factory CBJCompEntity.empty(MUser userId) => CBJCompEntity(
        id: CBJCompUniqueId(),
        roomId: CBJCompRoomId(),
        cBJCompDevices: CBJCompDevices(<DeviceEntity>[].toImmutableList()),
        name: CBJCompDefaultName(''),
        macAddr: CBJCompMacAddr(''),
        compOs: CBJCompOs(''),
        compModel: CBJCompModel(''),
        compType: CBJCompType(''),
      );

  Option<CBJCompFailure<dynamic>> get failureOption {
    return roomId.value.fold((f) => some(f), (_) => none());
  }
}
