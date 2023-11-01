import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../bloc/theme_bloc/theme_bloc.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc,ThemeBlocState>(
      builder: (context,state) {
        return IconButton(
            onPressed: () {
              if (state.themeMode == ThemeMode.light) {
                context.read<ThemeBloc>().add(const DarkThemeEvent());
              } else {
                context.read<ThemeBloc>().add(const LightThemeEvent());
              }
            },
            icon: state.iconTheme);
      }
    );
  }
}
