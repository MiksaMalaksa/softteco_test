  import 'package:flutter/cupertino.dart';

import 'actions/no_action.dart';
import 'actions/theme_change_icon.dart';

List<List<Widget>> currentActions = [
    NoActions().actions,
    [const ChangeTheme()]
  ];