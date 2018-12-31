///
//  Generated code. Do not modify.
//  source: hello.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'hello.pb.dart';
export 'hello.pb.dart';

class HelloServiceClient extends Client {
  static final _$sayHello = new ClientMethod<HelloRequest, HelloResponse>(
      '/model.HelloService/SayHello',
      (HelloRequest value) => value.writeToBuffer(),
      (List<int> value) => new HelloResponse.fromBuffer(value));

  HelloServiceClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<HelloResponse> sayHello(HelloRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$sayHello, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class HelloServiceBase extends Service {
  String get $name => 'model.HelloService';

  HelloServiceBase() {
    $addMethod(new ServiceMethod<HelloRequest, HelloResponse>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        (List<int> value) => new HelloRequest.fromBuffer(value),
        (HelloResponse value) => value.writeToBuffer()));
  }

  $async.Future<HelloResponse> sayHello_Pre(
      ServiceCall call, $async.Future request) async {
    return sayHello(call, await request);
  }

  $async.Future<HelloResponse> sayHello(ServiceCall call, HelloRequest request);
}
