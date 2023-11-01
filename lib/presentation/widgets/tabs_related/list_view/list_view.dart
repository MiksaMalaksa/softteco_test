import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';
import 'package:softteco_rest_json/presentation/widgets/tabs_related/list_view/list_element.dart';

class ListViewMode extends StatelessWidget {
  const ListViewMode({super.key, required this.users});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(5),
      scrollDirection: Axis.vertical,
      itemCount: users.length,
      itemBuilder: (context, index) => ListElement(user: users[index]),
      separatorBuilder: (_, index) => const SizedBox(
        height: 4,
      ),
    );
  }
}