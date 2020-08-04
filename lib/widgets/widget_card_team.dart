
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
            decoration: buildCardDecoration(),
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
                  margin: EdgeInsets.fromLTRB(16, 4, 16, 10),
                  child: buildCardFooter()
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );

  Widget buildCardFooter() {
    if (_team.isInteractive) {
      return buildInteractiveFooter();
    } else {
      return buildTeamName();
    }
  }

  Widget buildInteractiveFooter() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildTeamName(),
      buildInteractionIcons()
    ],
  );

  Decoration buildCardDecoration() {
    if (_team.isMain) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 2,
          color: Colors.green
        )
      );
    } else {
      return BoxDecoration();
    }
  }

  Widget buildTeamName() => Container(
    alignment: Alignment.centerLeft,
    child: Text(_team.name, style: TextStyle(fontSize: 18))
  );

  Widget buildInteractionIcons() => Container(
    alignment: Alignment.centerRight,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Icon(Icons.delete)
        ),
        buildMainTeamIcon()
      ],
    ),
  );

  Widget buildMainTeamIcon() {
    if (_team.isMain) {
      return Icon(Icons.check, color: Colors.green);
    } else {
      return Icon(Icons.check);
    }
  }

}