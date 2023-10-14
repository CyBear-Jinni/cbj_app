import 'package:cbj_integrations_controller/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class MUser with _$MUser {
  const factory MUser({
    required UniqueId id,
  }) = _MUser;
}

@freezed
class MHome with _$MHome {
  const factory MHome({
    required UniqueId id,
  }) = _MHome;
}
