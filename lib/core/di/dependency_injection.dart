import 'package:advanced_project_omar_ahmed/core/networking/dio_factory.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../networking/api_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Setup your dependencies here
  //Dio && ApiService

  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  //home
}
