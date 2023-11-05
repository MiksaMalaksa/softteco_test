import 'package:bloc/bloc.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/tabs_related/users.dart';
import 'package:softteco_rest_json/repositories/get_users.dart';
import '../../models/user.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UsersEvent, UsersState> {
  UserBloc() : super(const Initial()) {
    on<LoadUsers>(_onLoadUsers);
    on<AddUser>(_onAddUser);
    on<RemoveUser>(_onRemoveUser);
  }

  void _onLoadUsers(LoadUsers event, Emitter<UsersState> emit) async {
    emit(const Loading());

    try {
      List<User> users = await getUsers();
      emit(Loaded(users: users));
    } catch (_) {
      emit(const Error());
    }
  }

  void _onAddUser(AddUser event, Emitter<UsersState> emit) {
    users.add(event.user);
    emit(UserAdded(users: users));
  }

  void _onRemoveUser(RemoveUser event, Emitter<UsersState> emit) {
    users.remove(event.user);
    emit(UserAdded(users: users));
  }
}
