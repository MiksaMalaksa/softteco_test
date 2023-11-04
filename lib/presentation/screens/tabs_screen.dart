import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:softteco_rest_json/bloc/user_bloc/user_bloc.dart';
import 'package:softteco_rest_json/presentation/screens/settings_screen.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/application_app_bar.dart';
import '../widgets/app_bars/actions_app_bar.dart/all_actions.dart';
import '../widgets/screens_widgets/tabs_related/content.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key, required this.view, required this.needLoading});

  final String view;
  final bool needLoading;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectedPageIndex = 0;
  String title = '';

  @override
  void initState() {
    super.initState();
    title = widget.view;
    if (widget.needLoading) {
      {
        context.read<UserBloc>().add(const LoadUsers());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String currentView = widget.view;

    List<Widget> content = [
      DisplayContent(view: currentView),
      SettingsScreen(
        currentView: currentView,
      )
    ];

    return Scaffold(
      appBar: ApplicationBar(
          title: title, actions: currentActions[selectedPageIndex]),
      body: content[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedPageIndex = index;
              if (selectedPageIndex == 1) {
                title = "Settings";
              } else {
                title = currentView;
              }
            });
          },
          currentIndex: selectedPageIndex,
          selectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.view_agenda_outlined,
                  color: Theme.of(context).primaryIconTheme.color),
              label: "View",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
                label: "Settings")
          ]),
    );
  }
}
