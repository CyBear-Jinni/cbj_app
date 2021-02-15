import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_entity.freezed.dart';

@freezed
abstract class DeviceEntity implements _$DeviceEntity {
  const DeviceEntity._();

  const factory DeviceEntity({
    @required DeviceUniqueId id,
    @required DeviceDefaultName defaultName,
    @required DeviceUniqueId roomId,
    @required DeviceState state,
    @required DeviceType type,
  }) = _DeviceEnitie;

  factory DeviceEntity.empty() => DeviceEntity(
        id: DeviceUniqueId(),
        defaultName: DeviceDefaultName(''),
        roomId: DeviceUniqueId(),
        state: DeviceState(''),
        type: DeviceType(''),
      );

  Option<DevicesFailure<dynamic>> get failureOption {
    return defaultName.value.fold((f) => some(f), (_) => none());
    //
    // return body.failureOrUnit
    //     .andThen(todos.failureOrUnit)
    //     .andThen(
    //       todos
    //           .getOrCrash()
    //           // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
    //           .map((todoItem) => todoItem.failureOption)
    //           .filter((o) => o.isSome())
    //           // If we can't get the 0th element, the list is empty. In such a case, it's valid.
    //           .getOrElse(0, (_) => none())
    //           .fold(() => right(unit), (f) => left(f)),
    //     )
    //     .fold((f) => some(f), (_) => none());
  }
}
