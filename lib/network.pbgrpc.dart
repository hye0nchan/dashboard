///
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'network.pb.dart' as $0;
export 'network.pb.dart';

class ExProtoClient extends $grpc.Client {
  static final _$exLink = $grpc.ClientMethod<$0.ExMessage, $0.ExMessage>(
      '/net_exchange.ExProto/ExLink',
      ($0.ExMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExMessage.fromBuffer(value));
  static final _$exClientstream =
      $grpc.ClientMethod<$0.ExMessage, $0.ExMessage>(
          '/net_exchange.ExProto/ExClientstream',
          ($0.ExMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ExMessage.fromBuffer(value));
  static final _$exServerstream =
      $grpc.ClientMethod<$0.ExMessage, $0.ExMessage>(
          '/net_exchange.ExProto/ExServerstream',
          ($0.ExMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ExMessage.fromBuffer(value));

  ExProtoClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ExMessage> exLink($async.Stream<$0.ExMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$exLink, request, options: options);
  }

  $grpc.ResponseFuture<$0.ExMessage> exClientstream($0.ExMessage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exClientstream, request, options: options);
  }

  $grpc.ResponseStream<$0.ExMessage> exServerstream($0.ExMessage request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$exServerstream, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ExProtoServiceBase extends $grpc.Service {
  $core.String get $name => 'net_exchange.ExProto';

  ExProtoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ExMessage, $0.ExMessage>(
        'ExLink',
        exLink,
        true,
        true,
        ($core.List<$core.int> value) => $0.ExMessage.fromBuffer(value),
        ($0.ExMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExMessage, $0.ExMessage>(
        'ExClientstream',
        exClientstream_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ExMessage.fromBuffer(value),
        ($0.ExMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExMessage, $0.ExMessage>(
        'ExServerstream',
        exServerstream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ExMessage.fromBuffer(value),
        ($0.ExMessage value) => value.writeToBuffer()));
  }

  $async.Future<$0.ExMessage> exClientstream_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ExMessage> request) async {
    return exClientstream(call, await request);
  }

  $async.Stream<$0.ExMessage> exServerstream_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ExMessage> request) async* {
    yield* exServerstream(call, await request);
  }

  $async.Stream<$0.ExMessage> exLink(
      $grpc.ServiceCall call, $async.Stream<$0.ExMessage> request);
  $async.Future<$0.ExMessage> exClientstream(
      $grpc.ServiceCall call, $0.ExMessage request);
  $async.Stream<$0.ExMessage> exServerstream(
      $grpc.ServiceCall call, $0.ExMessage request);
}
