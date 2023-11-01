import 'package:flutter/material.dart';
import 'package:softteco_rest_json/models/user.dart';
import 'package:softteco_rest_json/presentation/screens/details_screen.dart';

class ListElement extends StatelessWidget {
  const ListElement({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(user.thumbNail),
      title:
          Text(user.fullName, style: Theme.of(context).textTheme.titleMedium,overflow: TextOverflow.ellipsis,),
      tileColor: Theme.of(context).scaffoldBackgroundColor,
      subtitle: Text(user.email, style: Theme.of(context).textTheme.titleSmall,overflow: TextOverflow.ellipsis,),
      trailing: const Icon(Icons.arrow_forward),
      iconColor: Theme.of(context).colorScheme.secondary,
      dense: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Theme.of(context).colorScheme.secondary)),
      selectedColor: const Color.fromARGB(164, 147, 212, 255),
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DetailsScreen(user: user)));
      },
    );
  }
}
