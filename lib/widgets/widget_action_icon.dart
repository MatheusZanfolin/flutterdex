
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionIcon extends StatelessWidget {

  final String action;
  final IconData icon;
  final VoidCallback onTap;

  ActionIcon({@required this.action, @required this.icon, @required this.onTap});

  @override
  Widget build(BuildContext context) => Icon(icon);

}