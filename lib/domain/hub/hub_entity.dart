import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/domain/hub/hub_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hub_entity.freezed.dart';

@freezed
abstract class HubEntity implements _$HubEntity {
  const factory HubEntity({
    required HubNetworkBssid hubNetworkBssid,
    required HubNetworkName networkName,
    required HubNetworkIp? lastKnownIp,
    HubMdnsName? mdnsName,
  }) = _HubEntity;

  const HubEntity._();

  factory HubEntity.empty() => HubEntity(
        hubNetworkBssid: HubNetworkBssid(''),
        networkName: HubNetworkName(''),
        lastKnownIp: HubNetworkIp(''),
      );

  Option<HubFailures<dynamic>> get failureOption {
    return lastKnownIp!.value.fold((f) => some(f), (_) => none());
  }
}
