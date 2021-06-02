part of 'contacts_bloc.dart';

abstract class UsersState {}

class UsersInitial extends UsersState {}

class UsersLoading extends UsersState {}

class UsersFailure extends UsersState {
  final String message;

  UsersFailure(this.message);
}

class UsersSuccess extends UsersState {
  final User user;

  UsersSuccess(this.user);
}