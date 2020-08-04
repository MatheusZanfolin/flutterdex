
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/card_content_team.dart';
import 'package:flutterdex/widgets/widget_card_team.dart';
import 'package:flutterdex/widgets/widget_pokemon_icon.dart';
import 'package:flutterdex/widgets/widget_screen.dart';

class TeamsRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MainScreen(
    title: 'Meus times',
    child: Container(
      child: Column(
        children: <Widget>[
          ListView.builder(
            padding: EdgeInsets.only(top: 0),
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(bottom: 8),
              child: TeamCard(getContent(index))
            )
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () { /* TODO */ },
          )
        ],
      ),
    ),
  );

  TeamCardContent getContent(int index) {
    return index == 0 ? getCynthiaTeam() : getRedTeam();
  }

  TeamCardContent getRedTeam() => TeamCardContent('Champion Red (HG/SS)', [
    PokemonIcon('pikachu'),
    PokemonIcon('lapras'),
    PokemonIcon('snorlax'),
    PokemonIcon('venusaur'),
    PokemonIcon('charizard'),
    PokemonIcon('blastoise'),
  ], isMain: true);

  TeamCardContent getCynthiaTeam() => TeamCardContent('Champion Cynthia', [
    PokemonIcon('spiritomb'),
    PokemonIcon('roserade'),
    PokemonIcon('gastrodon'),
    PokemonIcon('lucario'),
    PokemonIcon('milotic'),
    PokemonIcon('garchomp'),
  ]);

}