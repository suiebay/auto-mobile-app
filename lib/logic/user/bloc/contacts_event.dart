part of 'contacts_bloc.dart';

abstract class UsersEvent {}

class UsersLoaded extends UsersEvent {
  final id;

  UsersLoaded(this.id);
}