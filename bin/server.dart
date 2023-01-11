import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'dart:io' show Platform;
import 'package:shelf_router/shelf_router.dart';

void main() async {
  // Variable for PORT
  Map<String, String> envVars = Platform.environment;
  var portEnv = envVars['PORT'];
  var _port = portEnv == null ? 7777 : int.parse(portEnv);

  //Routes
  final router = Router();

  final handler = Pipeline().addHandler(router);
  // Create server
  final server = await serve(handler, '0.0.0.0', _port);
  // Server on message
  print('☀️ Server running on localhost:${server.port} ☀️');
}
