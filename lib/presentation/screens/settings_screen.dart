import 'package:flutter/material.dart';
import 'package:softteco_rest_json/presentation/screens/start_screen.dart';
import 'package:softteco_rest_json/presentation/screens/tabs_screen.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/settings_related/load_again.dart';
import '../widgets/app_bars/actions_app_bar.dart/actions/theme_change_icon.dart';

const double heightBetweenTitleAndButton = 12;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key, required this.currentView});

  final String currentView;
  List<Widget> get actions {
    return [const ChangeTheme()];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Navigation",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: heightBetweenTitleAndButton,
          ),
          ListTile(
            leading: const Icon(Icons.home),
            iconColor: Theme.of(context).colorScheme.secondary,
            dense: true,
            title: Text(
              "Tap to back to start screen",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side:
                    BorderSide(color: Theme.of(context).colorScheme.secondary)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const StartScreen())));
            },
          ),
          const SizedBox(
            height: 8,
          ),
          ListTile(
            leading: const Icon(Icons.view_agenda_outlined),
            iconColor: Theme.of(context).colorScheme.secondary,
            dense: true,
            title: Text(
              "Tap to view screen",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side:
                    BorderSide(color: Theme.of(context).colorScheme.secondary)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => TabsScreen(
                        view: currentView,
                        needLoading: false,
                      ))));
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Load again",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: heightBetweenTitleAndButton,
          ),
          const LoadAgain(),
        ],
      ),
    );
  }
}
