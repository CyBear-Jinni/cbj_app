import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/home_user/home_user_value_objects.dart';
import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_failures.dart';
import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_wifi_entity.freezed.dart';

@freezed
abstract class ManageWiFiEntity implements _$ManageWiFiEntity {
  const ManageWiFiEntity._();

  const factory ManageWiFiEntity({
    @required ManageWiFiName name,
    ManageWiFiPass passpass,
  }) = _ManageWiFiEntity;

  factory ManageWiFiEntity.empty() => ManageWiFiEntity(
        name: ManageWiFiName(''),
      );

  Option<ManageWiFiFailures<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }
}
