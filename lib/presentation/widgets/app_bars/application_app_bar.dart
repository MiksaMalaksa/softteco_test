import 'package:flutter/material.dart';

class ApplicationBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationBar({super.key, required this.title, required this.actions});

  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.left,
      ),
      leadingWidth: 0,
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
