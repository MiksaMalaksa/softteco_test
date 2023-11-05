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

final class UserAdded extends UsersState {
  final List<User> users;
  const UserAdded({required this.users});
}

final class UserRemoved extends UsersState {
  final List<User> users;
  const UserRemoved({required this.users});
}
