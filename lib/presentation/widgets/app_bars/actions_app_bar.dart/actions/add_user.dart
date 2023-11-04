import 'package:flutter/material.dart';
import 'package:softteco_rest_json/presentation/screens/add_screen.dart';

class AddUser extends StatelessWidget {
  const AddUser({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const AddScreen()));
        },
        icon: Icon(
          Icons.add,
          color: Theme.of(context).primaryIconTheme.color,
        ));
  }
}
