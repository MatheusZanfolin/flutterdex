
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdex/widgets/widget_header.dart';
import 'package:flutterdex/widgets/widget_space.dart';

class Screen extends StatelessWidget {

  final String title;
  final Widget child;

  final Widget closingIcon;
  final List<Widget> actionIcons;

  Screen({
    @required this.title,
    @required this.child,
    this.closingIcon,
    this.actionIcons
  });

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(16, MediaQuery.of(context).padding.top, 16, 0),
    child: ListView(
      children: [
        Row(children: buildHeader()),
        Space(size: 16),
        child
      ],
    ),
  );

  List<Widget> buildHeader() {
    var header = <Widget>[];

    if (closingIcon != null) {
      header.add(closingIcon);
    }

    header.add(Expanded(child: Header(text: title)));

    if (actionIcons != null) {
      while (actionIcons.iterator.moveNext()) {
        header.add(actionIcons.iterator.current);
      }
    }

    return header;
  }

}