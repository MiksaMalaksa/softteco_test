import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:softteco_rest_json/presentation/screens/start_screen.dart';
import 'package:softteco_rest_json/theme/app_theme_data.dart';

import 'bloc/providers.dart';
import 'bloc/theme_bloc/theme_bloc.dart';

void main() {
  const myApp = MyApp();
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providersList,
      child: BlocBuilder<ThemeBloc, ThemeBlocState>(builder: (context, state) {
        return MaterialApp(
            theme: AppThemeData.lightTheme(),
            darkTheme: AppThemeData.darkTheme(),
            themeMode: state.themeMode,
            home: const StartScreen());
      }),
    );
  }
}
