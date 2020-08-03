
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/team_data.dart';
import 'package:flutterdex/widgets/widget_card_team.dart';

class MainTeam extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(top: 16),
    child: Column(
      children: [
        Text('Seu time', style: TextStyle(fontSize: 20)),
        TeamCard(team: Team('Champion Red (HG/SS)', [ // TODO Fetch async
          _getImage('pikachu'),
          _getImage('lapras'),
          _getImage('snorlax'),
          _getImage('venusaur'),
          _getImage('charizard'),
          _getImage('blastoise'),
        ]))
      ],
    ),
  );

  Image _getImage(String pokemon) => Image.asset('assets/$pokemon.png',
    width: 48,
    height: 48,
    fit: BoxFit.fill,
  );

}