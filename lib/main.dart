
import 'package:flutter/material.dart';
import 'package:flutterdex/routes/route_main.dart';

void main() { runApp(MyApp()); }

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Pokédex',
    theme: ThemeData(
      fontFamily: 'Montserrat',
      primarySwatch: Colors.red,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: MainRoute(),
  );

}