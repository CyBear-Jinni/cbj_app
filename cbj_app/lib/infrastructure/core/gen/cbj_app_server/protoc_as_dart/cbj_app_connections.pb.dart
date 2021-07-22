///
//  Generated code. Do not modify.
//  source: cbj_app_connections.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CompInfoSB extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompInfoSB', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJAppConnections'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compIP', protoName: 'compIP')
    ..hasRequiredFields = false
  ;

  CompInfoSB._() : super();
  factory CompInfoSB({
    $core.String? compIP,
  }) {
    final _result = create();
    if (compIP != null) {
      _result.compIP = compIP;
    }
    return _result;
  }
  factory CompInfoSB.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompInfoSB.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompInfoSB clone() => CompInfoSB()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompInfoSB copyWith(void Function(CompInfoSB) updates) => super.copyWith((message) => updates(message as CompInfoSB)) as CompInfoSB; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompInfoSB create() => CompInfoSB._();
  CompInfoSB createEmptyInstance() => create();
  static $pb.PbList<CompInfoSB> createRepeated() => $pb.PbList<CompInfoSB>();
  @$core.pragma('dart2js:noInline')
  static CompInfoSB getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompInfoSB>(create);
  static CompInfoSB? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get compIP => $_getSZ(0);
  @$pb.TagNumber(2)
  set compIP($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompIP() => $_has(0);
  @$pb.TagNumber(2)
  void clearCompIP() => clearField(2);
}

class CBJCommendStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJCommendStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJAppConnections'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  CBJCommendStatus._() : super();
  factory CBJCommendStatus({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory CBJCommendStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CBJCommendStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CBJCommendStatus clone() => CBJCommendStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CBJCommendStatus copyWith(void Function(CBJCommendStatus) updates) => super.copyWith((message) => updates(message as CBJCommendStatus)) as CBJCommendStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CBJCommendStatus create() => CBJCommendStatus._();
  CBJCommendStatus createEmptyInstance() => create();
  static $pb.PbList<CBJCommendStatus> createRepeated() => $pb.PbList<CBJCommendStatus>();
  @$core.pragma('dart2js:noInline')
  static CBJCommendStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CBJCommendStatus>(create);
  static CBJCommendStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

