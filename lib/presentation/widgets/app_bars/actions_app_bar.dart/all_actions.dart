import 'package:flutter/cupertino.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/actions_app_bar.dart/actions/no_action.dart';
import 'actions/theme_change_icon.dart';

List<List<Widget>> currentActions = [
  NoActions().actions,
  [const ChangeTheme()]
];
