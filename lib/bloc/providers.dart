import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:softteco_rest_json/bloc/theme_bloc/theme_bloc.dart';
import 'package:softteco_rest_json/bloc/user_bloc/user_bloc.dart';

final providersList = [
  BlocProvider<ThemeBloc>(create: (_) => ThemeBloc()),
  BlocProvider<UserBloc>(create: (_) => UserBloc())
];
