
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/widgets/widget_action_icon.dart';
import 'package:flutterdex/widgets/widget_space.dart';

class ActionMenu extends StatelessWidget {

  final List<ActionIcon> icons;

  ActionMenu({@required this.icons});

  @override
  Widget build(BuildContext context) => PopupMenuButton(
    onSelected: _onPerform,
    itemBuilder: (context) => icons.map(buildMenuItem).toList()
  );

  PopupMenuItem<String> buildMenuItem(ActionIcon icon) => PopupMenuItem(
    value: icon.action,
    child: buildMenuItemContent(icon)
  );

  Container buildMenuItemContent(ActionIcon icon) => Container(
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    child: Row(
      children: [
        icon,
        Space(size: 8),
        Text(icon.action)
      ],
    ),
  );

  void _onPerform(String action) {
    var actionIcons = icons.iterator;

    while (actionIcons.moveNext()) {
      var icon = actionIcons.current;

      if (action == icon.action) {
        icon.onTap();
      }
    }
  }

}