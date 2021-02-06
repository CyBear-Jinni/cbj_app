import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initialize_home.freezed.dart';

@freezed
abstract class InitializeHome with _$InitializeHome {
  const factory InitializeHome({
    @required UniqueId id,
  }) = _InitialHome;
}
