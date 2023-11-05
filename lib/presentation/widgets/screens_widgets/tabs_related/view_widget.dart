import 'package:flutter/material.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/tabs_related/users.dart';

import 'grid_view/grid_view.dart';
import 'list_view/list_view.dart';

class ShowingView extends StatelessWidget {
  const ShowingView({super.key, required this.view});

  final String view;

  @override
  Widget build(BuildContext context) {
    return view == "Grid view"
        ? GridViewMode(users: users)
        :  ListViewMode(users: users);
  }
}
