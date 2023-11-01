import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../constants/theme/theme_icons_constants.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeBlocState> {
  ThemeBloc()
      : super(const ThemeBlocState(
            themeMode: ThemeMode.light, iconTheme: sunnyIcon)) {
    on<DarkThemeEvent>((event, emit) =>
        emit(state.copyWith(themeMode: ThemeMode.dark, iconTheme: moonIcon)));
    on<LightThemeEvent>((event, emit) =>
        emit(state.copyWith(themeMode: ThemeMode.light, iconTheme: sunnyIcon)));
  }
}
