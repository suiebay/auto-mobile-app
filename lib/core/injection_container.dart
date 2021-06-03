import 'package:auto_mobile_app/core/utils/dio/dio_interceptor.dart';
import 'package:auto_mobile_app/core/utils/dio/dio_wrapper.dart';
import 'package:auto_mobile_app/logic/user/bloc/contacts_bloc.dart';
import 'package:auto_mobile_app/logic/user/data/datasources/user_remote_datasource.dart';
import 'package:auto_mobile_app/logic/user/data/repositories/users_repository_impl.dart';
import 'package:auto_mobile_app/logic/user/domain/repositories/users_repository.dart';
import 'package:auto_mobile_app/logic/user/domain/usecases/get_user.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'network/network_info.dart';

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
    () => UsersRepositoryImpl(getIt(), getIt()),
  );

  getIt.registerLazySingleton(
    () => GetUser(getIt())
  );

  getIt.registerFactory<UsersBloc>(
    () => UsersBloc(getIt()),
  );

  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(getIt())
  );

  //! External
  getIt.registerLazySingleton(() => DataConnectionChecker());
}
