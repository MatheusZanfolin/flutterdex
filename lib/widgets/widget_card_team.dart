
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/team_data.dart';

class TeamCard extends StatelessWidget {

  final Team team;
  
  TeamCard({@required this.team});

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
            child: Text(team.name, style: TextStyle(fontSize: 18))
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8),
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 32,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: team.pokemons.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => team.pokemons[index],
              ),
            )
          )
        ],
      ),
    ),
  );

}