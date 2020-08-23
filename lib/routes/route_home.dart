
import 'package:flutter/cupertino.dart';
import 'package:flutterdex/widgets/widget_main_team.dart';
import 'package:flutterdex/widgets/widget_recent_activity.dart';
import 'package:flutterdex/widgets/widget_screen.dart';
import 'package:flutterdex/widgets/widget_search_bar.dart';

class HomeRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Screen(
    title: 'Pokédex',
    child: Column(
      children: [
        SearchBar(),
        MainTeam(),
        RecentActivity()
      ],
    ),
  );

}