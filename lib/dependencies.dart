import 'appwrite/appwrite.dart';
import 'package:get_it/get_it.dart';

void initDependancies() {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton(() => Appwrite());
}
