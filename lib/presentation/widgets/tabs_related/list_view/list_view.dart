import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';
import 'package:softteco_rest_json/presentation/widgets/tabs_related/list_view/list_element.dart';

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
          key: ValueKey(users[index].id),
          background: Container(
            decoration:
                BoxDecoration(color: Theme.of(context).primaryColorLight),
                child: Center(child: Text("Delete",style: Theme.of(context).textTheme.bodySmall,)),
          ),
          child: ListElement(user: users[index])),
    );
  }
}
