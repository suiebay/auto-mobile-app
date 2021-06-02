import 'package:auto_mobile_app/logic/user/data/datasources/user_remote_datasource.dart';
import 'package:auto_mobile_app/logic/user/data/models/user.dart';
import 'package:dio/dio.dart';

abstract class UsersRepository {
  Future<User> getUsers(int id);
}

class UsersRepositoryImpl implements UsersRepository {
  final UsersRemoteDataSource usersRemoteDataSource;

  UsersRepositoryImpl(this.usersRemoteDataSource);

  @override
  Future<User> getUsers(int id) async {
    Response data = await usersRemoteDataSource.getUsers(id);
    return User.fromJson(data.data);
  }
}