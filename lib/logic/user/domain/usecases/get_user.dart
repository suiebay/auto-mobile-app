import 'package:auto_mobile_app/core/error/failures.dart';
import 'package:auto_mobile_app/core/usecases/usecase.dart';
import 'package:auto_mobile_app/logic/user/domain/entities/user.dart';
import 'package:auto_mobile_app/logic/user/domain/repositories/users_repository.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetUser implements UseCase<User, Params> {
  final UsersRepository repository;

  GetUser(this.repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return await repository.getUsers(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({required this.number});

  @override
  List<Object> get props => [number];
}