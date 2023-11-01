import 'package:flutter/material.dart';

import 'button.dart';

class ViewButtons extends StatefulWidget {
  const ViewButtons({super.key});

  @override
  State<ViewButtons> createState() => _ViewButtonsState();
}

class _ViewButtonsState extends State<ViewButtons> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ViewButton(title: "Grid view"),
        SizedBox(
          height: 18,
        ),
        ViewButton(
          title: "List view",
        ),
      ],
    );
  }
}
