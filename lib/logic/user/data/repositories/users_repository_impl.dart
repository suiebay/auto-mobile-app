import 'package:auto_mobile_app/core/error/exceptions.dart';
import 'package:auto_mobile_app/core/error/failures.dart';
import 'package:auto_mobile_app/core/network/network_info.dart';
import 'package:auto_mobile_app/logic/user/data/datasources/user_remote_datasource.dart';
import 'package:auto_mobile_app/logic/user/domain/entities/user.dart';
import 'package:auto_mobile_app/logic/user/domain/repositories/users_repository.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';

typedef Future<User> _User();

class UsersRepositoryImpl implements UsersRepository {
  final UsersRemoteDataSource usersRemoteDataSource;
  final NetworkInfo networkInfo;

  UsersRepositoryImpl(this.usersRemoteDataSource, this.networkInfo);

  @override
  Future<Either<Failure, User>> getUsers(
      int number,
      ) async {
    return await _getUser(() {
      return usersRemoteDataSource.getUsers(number);
    });
  }

  Future<Either<Failure, User>> _getUser(_User getUser) async {
    if(await networkInfo.isConnected) {
      try {
        final user = await getUser();
        return Right(user);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(CacheFailure());
    }
  }
}