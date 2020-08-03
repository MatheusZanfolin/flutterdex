
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdex/widgets/widget_header.dart';

class MainScreen extends StatelessWidget {

  final String title;
  final Widget child;

  MainScreen({@required this.title, @required this.child});

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(16, 40, 16, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Header(text: title),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 16),
            child: child,
          ),
        )
      ],
    ),
  );

}