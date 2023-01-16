import 'package:dart_shelf_practice/server.dart';

class UserRouter {
  Handler get router {
    final router = Router();

    router.get("/", UserController().getAllUsers);

    return Pipeline().addHandler(router);
  }
}
