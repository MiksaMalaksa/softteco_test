import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  const InputFormField({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 20,
      cursorColor: Theme.of(context).colorScheme.secondary,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        label: Text(
          "Write user's $title",
        ),
      ),
    );
  }
}
