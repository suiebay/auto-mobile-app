import 'package:auto_mobile_app/core/utils/dio/dio_interceptor.dart';
import 'package:auto_mobile_app/core/utils/dio/dio_wrapper.dart';
import 'package:auto_mobile_app/logic/user/bloc/contacts_bloc.dart';
import 'package:auto_mobile_app/logic/user/data/datasources/user_remote_datasource.dart';
import 'package:auto_mobile_app/logic/user/data/repositories/contacts_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupInjections() {

  getIt.registerFactory<Dio>(
        () => Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/')),
  );

  getIt.registerLazySingleton<DioInterceptor>(
        () => DioInterceptor(),
  );

  getIt.registerFactory<DioWrapper>(
        () => DioWrapper(getIt(), getIt()),
  );

  getIt.registerLazySingleton<UsersRemoteDataSource>(
    () => UsersRemoteDataSourceImpl(dioWrapper: getIt()),
  );

  getIt.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(getIt()),
  );

  getIt.registerFactory<UsersBloc>(
    () => UsersBloc(getIt()),
  );

}
