import 'package:flutter/material.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/tabs_related/list_view/list_element.dart';
import '../users.dart';

class ListViewMode extends StatelessWidget {
  const ListViewMode({super.key});


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
            users.removeAt(index);
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
