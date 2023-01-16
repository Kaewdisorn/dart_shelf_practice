import 'package:dart_shelf_practice/server.dart';

final getIt = GetIt.instance;

initGetIt() {
  //usecase
  getIt.registerLazySingleton<UserUsecase>(() => UserUsecaseImpl());

  //repository
  getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());
}
