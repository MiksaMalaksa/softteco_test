import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:softteco_rest_json/bloc/user_bloc/user_bloc.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/tabs_related/list_view/list_element.dart';
import '../../../../../models/user.dart';

class ListViewMode extends StatelessWidget {
  const ListViewMode({super.key, required this.users});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(5),
      scrollDirection: Axis.vertical,
      itemCount: users.length,
      itemBuilder: (context, index) => Dismissible(
          direction: DismissDirection.endToStart,
          key: ValueKey(users[index].id),
          onDismissed: (_) {
            context.read<UserBloc>().add(RemoveUser(user: users[index]));
          },
          background: Container(
            decoration:
                BoxDecoration(color: Theme.of(context).primaryColorLight),
            child: Center(
                child: Text(
              "Delete",
              style: Theme.of(context).textTheme.bodySmall,
            )),
          ),
          child: ListElement(user: users[index])),
    );
  }
}
