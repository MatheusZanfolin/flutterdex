
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/card_content_team.dart';
import 'package:flutterdex/widgets/widget_card_team.dart';
import 'package:flutterdex/widgets/widget_pokemon_icon.dart';

class MainTeam extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(top: 16),
    child: Column(
      children: [
        Text('Seu time', style: TextStyle(fontSize: 20)),
        TeamCard(TeamCardContent('Champion Red (HG/SS)', [ // TODO Fetch async
          PokemonIcon('pikachu'),
          PokemonIcon('lapras'),
          PokemonIcon('snorlax'),
          PokemonIcon('venusaur'),
          PokemonIcon('charizard'),
          PokemonIcon('blastoise'),
        ], isInteractive: false))
      ],
    ),
  );

}