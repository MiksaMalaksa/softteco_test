import 'package:flutter/material.dart';
import '../widgets/app_bars/actions_app_bar.dart/actions/no_action.dart';
import '../widgets/app_bars/application_app_bar.dart';
import '../widgets/start_related/buttons/buttons_view.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        title: "Start screen",
        actions: NoActions().actions,
      ),
      body: const Center(
        child: ViewButtons(),
      ),
    );
  }
}
