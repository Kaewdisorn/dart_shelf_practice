import 'package:dart_shelf_practice/server.dart';

class ApiRouter {
  final HomeRouter homeRouter;

  ApiRouter({
    required this.homeRouter,
  });

  Handler get router {
    final router = Router();
    final prefix = '/';

    router.mount(prefix, homeRouter.router);

    router.all('/<ignored|.*>', (Request request) => Response.notFound('Page not found'));
    return Pipeline().addHandler(router);
  }
}
