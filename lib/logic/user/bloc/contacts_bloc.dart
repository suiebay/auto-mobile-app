import 'package:auto_mobile_app/logic/user/data/models/user.dart';
import 'package:auto_mobile_app/logic/user/data/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'contacts_bloc_state.dart';
part 'contacts_event.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepository usersRepository;

  UsersBloc(this.usersRepository) : super(UsersInitial());

  @override
  Stream<UsersState> mapEventToState(UsersEvent event) async* {
    if(event is UsersLoaded) {
      yield UsersLoading();
      try {
        final User user = await usersRepository.getUsers(event.id);
        yield UsersSuccess(user);
      } on Exception catch (e) {
        yield UsersFailure(e.toString());
        throw (e);
      }
    }
  }

}