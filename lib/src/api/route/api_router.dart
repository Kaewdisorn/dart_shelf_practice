import 'package:dart_shelf_practice/server.dart';

class ApiRouter {
  Handler get router {
    final router = Router();
    final prefix = '/';

    //router.mount(prefix, usersRouter.router);
    router.get(prefix, (Request req) => Response.ok("Success Test"));

    return Pipeline().addHandler(router);
  }
}
