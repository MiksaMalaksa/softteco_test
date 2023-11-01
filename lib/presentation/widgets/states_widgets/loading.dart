import 'package:flutter/material.dart';

class LoadingModeWidget extends StatelessWidget {
  const LoadingModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CircularProgressIndicator(color: Color.fromARGB(255, 116, 162, 200)),
        const SizedBox(height: 10),
        Text("App loads info, be patient!",
            style: Theme.of(context).textTheme.titleMedium),
      ]),
    );
  }
}
