import 'package:flutter/material.dart';

class ErrorModeWidget extends StatelessWidget {
  const ErrorModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Something critical happened...Try again later!",
        textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,),
        const SizedBox(height: 8),
        Text(":(", style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
