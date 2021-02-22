import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_home.freezed.dart';

@freezed
abstract class CreateHome with _$CreateHome {
  const factory CreateHome({
    @required UniqueId id,
  }) = _CreateHome;
}
