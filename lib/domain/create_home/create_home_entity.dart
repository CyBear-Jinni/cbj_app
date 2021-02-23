import 'package:cybear_jinni/domain/create_home/create_home_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_home_entity.freezed.dart';

@freezed
abstract class CreateHomeEntity with _$CreateHomeEntity {
  const factory CreateHomeEntity({
    @required HomeUniqueId id,
    @required HomeName name,
    HomeDevicesUserEmail homeDevicesUserEmail,
    HomeDevicesUserPassword homeDevicesUserPassword,
  }) = _CreateHomeEntity;
}
