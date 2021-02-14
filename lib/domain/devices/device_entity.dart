import 'package:cybear_jinni/domain/devices/value_objects.dart';
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

// Option<ValueFailure<dynamic>> get FailureOption {
//   return name.value.fold((f) => some(f), (_) => none());
// }
}
