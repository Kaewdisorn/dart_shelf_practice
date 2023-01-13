import 'package:dart_shelf_practice/server.dart';

class HomeRouter {
  Handler get router {
    final router = Router();

    router.get('/', (Request req) => Response.ok("Success Test"));

    return Pipeline().addHandler(router);
  }
}
