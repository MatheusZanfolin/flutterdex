
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/card_content_pokemon.dart';
import 'package:flutterdex/models/card_content_team.dart';
import 'package:flutterdex/widgets/widget_card_team.dart';
import 'package:flutterdex/widgets/widget_pokemon_icon.dart';
import 'package:flutterdex/widgets/widget_screen.dart';

class TeamsRoute extends StatelessWidget {

  final List<TeamCardContent> _teams = getTeams();

  @override
  Widget build(BuildContext context) => MainScreen(
    title: 'Meus times',
    child: Container(
      child: Column(
        children: <Widget>[
          ListView.builder(
            padding: EdgeInsets.only(top: 0),
            shrinkWrap: true,
            itemCount: _teams.length,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(bottom: 8),
              child: TeamCard(_teams[index])
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

  static List<TeamCardContent> getTeams() => [
    getCynthiaTeam(),
    getRedTeam()
  ];

  static TeamCardContent getRedTeam() => TeamCardContent('Champion Red (HG/SS)', [
    PokemonIcon('pikachu'),
    PokemonIcon('lapras'),
    PokemonIcon('snorlax'),
    PokemonIcon('venusaur'),
    PokemonIcon('charizard'),
    PokemonIcon('blastoise'),
  ], isMain: true);

  static TeamCardContent getCynthiaTeam() => TeamCardContent('Champion Cynthia', [
    PokemonIcon('spiritomb'),
    PokemonIcon('roserade'),
    PokemonIcon('gastrodon'),
    PokemonIcon('lucario'),
    PokemonIcon('milotic'),
    PokemonIcon('garchomp'),
  ]);

}