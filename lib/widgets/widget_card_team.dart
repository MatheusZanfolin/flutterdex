
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/card_content_team.dart';

class TeamCard extends StatelessWidget {

  final TeamCardContent _team;
  
  TeamCard(this._team);

  @override
  Widget build(BuildContext context) => Card(
    child: Container(
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 16, left: 8),
            child: Text(_team.name, style: TextStyle(fontSize: 18))
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8),
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 32,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _team.pokemons.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => _team.pokemons[index],
              ),
            )
          )
        ],
      ),
    ),
  );

}