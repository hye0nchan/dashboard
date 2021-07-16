///
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use exMessageDescriptor instead')
const ExMessage$json = const {
  '1': 'ExMessage',
  '2': const [
    const {'1': 'route', '3': 1, '4': 1, '5': 13, '10': 'route'},
    const {'1': 'gw_id', '3': 2, '4': 1, '5': 13, '10': 'gwId'},
    const {'1': 'device_id', '3': 3, '4': 1, '5': 4, '10': 'deviceId'},
    const {'1': 'data_unit', '3': 4, '4': 1, '5': 12, '10': 'dataUnit'},
  ],
};

/// Descriptor for `ExMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exMessageDescriptor = $convert.base64Decode('CglFeE1lc3NhZ2USFAoFcm91dGUYASABKA1SBXJvdXRlEhMKBWd3X2lkGAIgASgNUgRnd0lkEhsKCWRldmljZV9pZBgDIAEoBFIIZGV2aWNlSWQSGwoJZGF0YV91bml0GAQgASgMUghkYXRhVW5pdA==');
@$core.Deprecated('Use exReplyDescriptor instead')
const ExReply$json = const {
  '1': 'ExReply',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 9, '10': 'count'},
  ],
};

/// Descriptor for `ExReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exReplyDescriptor = $convert.base64Decode('CgdFeFJlcGx5EhQKBWNvdW50GAEgASgJUgVjb3VudA==');
