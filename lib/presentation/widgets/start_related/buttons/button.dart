import 'package:flutter/material.dart';
import 'package:softteco_rest_json/presentation/screens/tabs_screen.dart';

class ViewButton extends StatelessWidget {
  const ViewButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          height: 80,
          width: 200,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 88, 131, 187),
                Color.fromARGB(143, 83, 155, 249)
              ]),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => TabsScreen(
              view: title,
              needLoading: true,
            ),
          ));
        });
  }
}
