import 'package:flutter/material.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/actions_app_bar.dart/actions/no_action.dart';

import '../widgets/app_bars/application_app_bar.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(title: "Add screen", actions: NoActions().actions),
      body: const Center(
        child: Text("Form will be here"),
      ),
    );
  }
}
