
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/card_content_team.dart';

class TeamCard extends StatelessWidget {

  final TeamCardContent _team;
  
  TeamCard(this._team);

  @override
  Widget build(BuildContext context) => Row(
    children: <Widget>[
      Expanded(
        child: Card(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 16),
                  child: SizedBox(
                    height: 32,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _team.pokemons.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => _team.pokemons[index],
                    ),
                  )
                ),
                Divider(thickness: 2, color: Colors.black12),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 4, bottom: 12, left: 16),
                  child: Text(_team.name, style: TextStyle(fontSize: 18))
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );

}