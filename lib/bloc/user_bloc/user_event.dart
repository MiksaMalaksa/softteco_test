part of 'user_bloc.dart';

sealed class UsersEvent {
  const UsersEvent();
}

final class LoadUsers extends UsersEvent {
  const LoadUsers();
}

final class AddUser extends UsersEvent {
  final User user;
  const AddUser({required this.user});
}

final class RemoveUser extends UsersEvent {
  final User user;
  const RemoveUser({required this.user});
}