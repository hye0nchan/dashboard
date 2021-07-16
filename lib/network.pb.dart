///
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ExMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'net_exchange'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'route', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gwId', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataUnit', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ExMessage._() : super();
  factory ExMessage({
    $core.int? route,
    $core.int? gwId,
    $fixnum.Int64? deviceId,
    $core.List<$core.int>? dataUnit,
  }) {
    final _result = create();
    if (route != null) {
      _result.route = route;
    }
    if (gwId != null) {
      _result.gwId = gwId;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (dataUnit != null) {
      _result.dataUnit = dataUnit;
    }
    return _result;
  }
  factory ExMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExMessage clone() => ExMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExMessage copyWith(void Function(ExMessage) updates) => super.copyWith((message) => updates(message as ExMessage)) as ExMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExMessage create() => ExMessage._();
  ExMessage createEmptyInstance() => create();
  static $pb.PbList<ExMessage> createRepeated() => $pb.PbList<ExMessage>();
  @$core.pragma('dart2js:noInline')
  static ExMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExMessage>(create);
  static ExMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get route => $_getIZ(0);
  @$pb.TagNumber(1)
  set route($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoute() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoute() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get gwId => $_getIZ(1);
  @$pb.TagNumber(2)
  set gwId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGwId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGwId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get deviceId => $_getI64(2);
  @$pb.TagNumber(3)
  set deviceId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get dataUnit => $_getN(3);
  @$pb.TagNumber(4)
  set dataUnit($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDataUnit() => $_has(3);
  @$pb.TagNumber(4)
  void clearDataUnit() => clearField(4);
}

class ExReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'net_exchange'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  ExReply._() : super();
  factory ExReply({
    $core.String? count,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory ExReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExReply clone() => ExReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExReply copyWith(void Function(ExReply) updates) => super.copyWith((message) => updates(message as ExReply)) as ExReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExReply create() => ExReply._();
  ExReply createEmptyInstance() => create();
  static $pb.PbList<ExReply> createRepeated() => $pb.PbList<ExReply>();
  @$core.pragma('dart2js:noInline')
  static ExReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExReply>(create);
  static ExReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get count => $_getSZ(0);
  @$pb.TagNumber(1)
  set count($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

