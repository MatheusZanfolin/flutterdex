
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/routes/route_favorites.dart';
import 'package:flutterdex/routes/route_home.dart';
import 'package:flutterdex/routes/route_teams.dart';
import 'package:flutterdex/widgets/widget_main_team.dart';
import 'package:flutterdex/widgets/widget_recent_activity.dart';
import 'package:flutterdex/widgets/widget_screen.dart';
import 'package:flutterdex/widgets/widget_search_bar.dart';

class MainRoute extends StatefulWidget {

  @override
  _MainRouteState createState() => _MainRouteState();

}

class _MainRouteState extends State<MainRoute> {

  PageController pages = PageController();

  int _selectedTab = 0;

  List<Widget> _tabs = [HomeRoute(), TeamsRoute(), FavoritesRoute()];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: PageView(
      onPageChanged: _onPageChanged,
      controller: pages,
      children: _tabs,
    ),
    bottomNavigationBar: BottomNavigationBar(
      onTap: _onTabSelected,
      currentIndex: _selectedTab,
      items: [
        BottomNavigationBarItem(
          title: Text('Home'),
          icon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
          title: Text('Times'),
          icon: Icon(Icons.list)
        ),
        BottomNavigationBarItem(
          title: Text('Favoritos'),
          icon: Icon(Icons.favorite)
        )
      ],
    ),
  );

  void _onPageChanged(index) => setState(() {
    _selectedTab = index;
  });

  void _onTabSelected(index) => pages.animateToPage(
    index,
    duration: Duration(milliseconds: 500),
    curve: Curves.easeOut
  );

  @override
  void dispose() {
    pages.dispose();
    super.dispose();
  }

}