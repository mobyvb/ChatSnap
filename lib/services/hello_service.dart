import 'package:chat_snap/common/grpc_commons.dart';
import 'package:chat_snap/model/hello.pb.dart';
import 'package:chat_snap/model/hello.pbgrpc.dart';

class HelloService {
  static Future<HelloResponse> SayHello() async{
    var client = HelloServiceClient(GrpcClientSingleton().client);
    return await client.sayHello(HelloRequest());
  }
}