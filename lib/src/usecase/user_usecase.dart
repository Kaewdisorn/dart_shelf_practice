import 'package:dart_shelf_practice/server.dart';

//business logic here
class UserUsecaseImpl implements UserUsecase {
  @override
  getAllUser() {
    UserRepository userRepository = getIt<UserRepository>();
    userRepository.fecth();
  }
}
