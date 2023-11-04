import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/tabs_related/grid_view/grid_element.dart';

class GridViewMode extends StatelessWidget {
  const GridViewMode({super.key, required this.users});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: [for (var user in users) GridElement(user: user)],
    );
  }
}
