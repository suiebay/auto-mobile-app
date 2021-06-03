
import 'package:auto_mobile_app/core/error/exceptions.dart';
import 'package:auto_mobile_app/core/utils/dio/dio_wrapper.dart';
import 'package:auto_mobile_app/logic/user/data/models/user_model.dart';
import 'package:dio/dio.dart';

abstract class UsersRemoteDataSource {
  Future<UserModel> getUsers(int id);
}

class UsersRemoteDataSourceImpl implements UsersRemoteDataSource {
  final DioWrapper? dioWrapper;

  UsersRemoteDataSourceImpl({this.dioWrapper}) {
    dioWrapper?.path = 'users/';
  }

  @override
  Future<UserModel> getUsers(int id) async {
    Response response = await dioWrapper!.get('$id');

    if (response.statusCode == 200) {
      print(response.data);
      return UserModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

}
