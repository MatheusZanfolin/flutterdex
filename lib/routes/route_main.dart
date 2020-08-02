
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/routes/widgets/widget_main_team.dart';
import 'package:flutterdex/routes/widgets/widget_recent_activity.dart';
import 'package:flutterdex/widgets/widget_screen.dart';
import 'package:flutterdex/widgets/widget_search_bar.dart';

class MainRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Screen(
    title: 'Pokedéx',
    child: Column(
      children: [
        SearchBar(),
        MainTeam(),
        RecentActivity()
      ],
    ),
  );

}