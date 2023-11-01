part of 'user_bloc.dart';

sealed class UsersEvent {
  const UsersEvent();
}

final class LoadUsers extends UsersEvent {
  const LoadUsers();
}
