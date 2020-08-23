
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdex/widgets/widget_action_icon.dart';
import 'package:flutterdex/widgets/widget_action_menu.dart';
import 'package:flutterdex/widgets/widget_close_icon.dart';
import 'package:flutterdex/widgets/widget_header.dart';
import 'package:flutterdex/widgets/widget_space.dart';

class Screen extends StatelessWidget {

  final String title;
  final Widget child;

  final CloseIcon closeIcon;
  final ActionMenu actionMenu;

  Screen({
    @required this.title,
    @required this.child,
    this.closeIcon,
    this.actionMenu
  });

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(16, MediaQuery.of(context).padding.top, 16, 0),
    child: ListView(
      children: [
        Row(children: buildHeader(context)),
        Space(size: 16),
        child
      ],
    ),
  );

  List<Widget> buildHeader(BuildContext context) {
    var header = <Widget>[];

    if (closeIcon != null) {
      header.add(closeIcon);
    }

    header.add(Expanded(child: Header(text: title)));

    if (actionMenu != null) {
      header.add(actionMenu);
    }

    return header;
  }

}