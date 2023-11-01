import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:softteco_rest_json/bloc/user_bloc/user_bloc.dart';

class LoadAgain extends StatelessWidget {
  const LoadAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.view_agenda_outlined),
      iconColor: Theme.of(context).colorScheme.secondary,
      dense: true,
      title: Text(
        "Tap to load again",
        style: Theme.of(context).textTheme.titleSmall,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Theme.of(context).colorScheme.secondary)),
      onTap: () {
        context.read<UserBloc>().add(const LoadUsers());
      },
    );
  }
}
