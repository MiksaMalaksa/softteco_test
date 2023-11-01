part of 'theme_bloc.dart';

sealed class ThemeEvent {
  const ThemeEvent();
}

final class DarkThemeEvent extends ThemeEvent {
  const DarkThemeEvent();
}

final class LightThemeEvent extends ThemeEvent {
  const LightThemeEvent();
}
