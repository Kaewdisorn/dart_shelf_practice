import 'package:dart_shelf_practice/server.dart';

void main() async {
  // Variable for PORT
  Map<String, String> envVars = Platform.environment;
  var portEnv = envVars['PORT'];
  var port = portEnv == null ? 7777 : int.parse(portEnv);

  //Routes
  final homeRouter = HomeRouter();

  final apiRouter = ApiRouter(homeRouter: homeRouter).router;

  final handler = Pipeline().addHandler(apiRouter);
  // Create server
  final server = await serve(handler, '0.0.0.0', port);
  // Server on message
  print('☀️ Server running on localhost:${server.port} ☀️');
}
