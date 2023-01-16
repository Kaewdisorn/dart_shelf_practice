import 'package:dart_shelf_practice/server.dart';

class ApiRouter {
  final UserRouter userRouter;

  ApiRouter({
    required this.userRouter,
  });

  Handler get router {
    final router = Router();

    //router.get("/", (Request request) => Response.ok("Welcome to API"));

    router.mount("/user", userRouter.router);

    router.all('/<ignored|.*>', (Request request) => Response.notFound('Page not found'));
    return Pipeline().addHandler(router);
  }
}
