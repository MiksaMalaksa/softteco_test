part of 'user_bloc.dart';

sealed class UsersState {
  const UsersState();
}

final class Initial extends UsersState {
  const Initial();
}

final class Loading extends UsersState {
  const Loading();
}

final class Loaded extends UsersState {
  final List<User> users;
  const Loaded({required this.users});
}

final class Error extends UsersState {
  const Error();
}
