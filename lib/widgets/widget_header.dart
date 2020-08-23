
import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {

  final String text;

  Header({@required this.text});

  @override
  Widget build(BuildContext context) => Text(text,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 24)
  );

}