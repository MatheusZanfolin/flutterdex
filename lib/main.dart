import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    home: MyHomePage(title: 'Pokédex'),
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      margin: EdgeInsets.fromLTRB(16, 48, 16, 0),
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Pokédex', style: TextStyle(fontSize: 24))
          ],
        ),
      ),
    ),
  );

}