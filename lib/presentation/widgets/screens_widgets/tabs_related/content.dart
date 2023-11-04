import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:softteco_rest_json/bloc/user_bloc/user_bloc.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/tabs_related/grid_view/grid_view.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/tabs_related/list_view/list_view.dart';
import 'package:softteco_rest_json/presentation/widgets/screens_widgets/tabs_related/users.dart';
import '../../states_widgets/error.dart';
import '../../states_widgets/loading.dart';
import 'package:softteco_rest_json/presentation/widgets/app_bars/actions_app_bar.dart/actions/no_action.dart';

class DisplayContent extends StatelessWidget {
  const DisplayContent({super.key, required this.view});

  final String view;
  List<Widget> get actions {
    return NoActions().actions;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UsersState>(
      builder: (context, state) {
        switch (state) {
          case Initial _:
            {
              return const Text("Initial state");
            }
          case Loading _:
            {
              return const LoadingModeWidget();
            }
          case Error _:
            {
              return const ErrorModeWidget();
            }
          case Loaded state:
            {
               users = state.users;
              return view == "Grid view"
                  ? GridViewMode(users: users)
                  : const ListViewMode();
            }
          case UserAdded state:
            {
               users = state.users;
              return view == "Grid view"
                  ? GridViewMode(users: users)
                  : const ListViewMode();
            }
        }
      },
    );
  }
}
