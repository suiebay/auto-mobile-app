
import 'package:auto_mobile_app/core/utils/dio/dio_wrapper.dart';
import 'package:dio/dio.dart';

abstract class UsersRemoteDataSource {
  Future<Response> getUsers(int id);
}

class UsersRemoteDataSourceImpl implements UsersRemoteDataSource {
  final DioWrapper? dioWrapper;

  UsersRemoteDataSourceImpl({this.dioWrapper}) {
    dioWrapper?.path = 'users/';
  }

  @override
  Future<Response> getUsers(int id) async {
    Response response = await dioWrapper!.get('$id');

    print(response.data);

    return response;
  }

}
