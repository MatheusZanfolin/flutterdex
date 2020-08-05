
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdex/widgets/widget_header.dart';
import 'package:flutterdex/widgets/widget_space.dart';

class MainScreen extends StatelessWidget {

  final String title;
  final Widget child;

  MainScreen({@required this.title, @required this.child});

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(16, MediaQuery.of(context).padding.top, 16, 0),
    child: ListView(
      children: [
        Center(child: Header(text: title)),
        Space(size: 16),
        child
      ],
    ),
  );

}