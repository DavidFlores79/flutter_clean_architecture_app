import 'package:flutter_clean_architecture_app/core/network/dio_client.dart';
import 'package:flutter_clean_architecture_app/data/repository/auth.dart';
import 'package:flutter_clean_architecture_app/data/source/auth_api_service.dart';
import 'package:flutter_clean_architecture_app/domain/repository/auth.dart';
import 'package:flutter_clean_architecture_app/domain/usercases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //Services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImp());

  //Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImp());

  //Usecases
  sl.registerSingleton<SignupUsecase>(SignupUsecase());
}