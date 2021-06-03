import 'package:auto_mobile_app/core/error/failures.dart';
import 'package:auto_mobile_app/logic/user/domain/entities/user.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';

abstract class UsersRepository {
  Future<Either<Failure, User>> getUsers(int id);
}