import 'package:dart_shelf_practice/server.dart';

class UserUsecase {
  getAllUser() {
    UserRepository userRepository = getIt<UserRepository>();
    userRepository.fecth();
  }
}
