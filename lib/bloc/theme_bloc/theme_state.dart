part of 'theme_bloc.dart';

sealed class ThemeState {}

final class ThemeInitial extends ThemeState {}

class ThemeBlocState {
  final ThemeMode themeMode;
  final Icon iconTheme;

  const ThemeBlocState({required this.themeMode, required this.iconTheme});

  ThemeBlocState copyWith({required themeMode, required iconTheme}) {
    return ThemeBlocState(
        themeMode: themeMode ?? this.themeMode,
        iconTheme: iconTheme ?? this.iconTheme);
  }
}
