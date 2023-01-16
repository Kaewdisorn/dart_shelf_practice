import 'package:dart_shelf_practice/server.dart';

class UserController {
  Future<Response> getAllUsers(Request request) async {
    UserUsecase userUsecase = getIt<UserUsecase>();
    userUsecase.getAllUser();
    return Response.ok("success");
  }
}
