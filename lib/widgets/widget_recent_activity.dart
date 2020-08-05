
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/card_content_pokemon.dart';
import 'package:flutterdex/widgets/widget_pokemon_card.dart';
import 'package:flutterdex/widgets/widget_space.dart';

class RecentActivity extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      Space(size: 16),
      Text('Último favorito', style: TextStyle(fontSize: 20)),
      PokemonCard(getLastFavorite()),
      Space(size: 16),
      Text('Última visualização', style: TextStyle(fontSize: 20)),
      PokemonCard(getLastVisualized()),
    ],
  );

  PokemonCardContent getLastVisualized() => PokemonCardContent(Image.asset('assets/metagross.png'), 'Metagross');

  PokemonCardContent getLastFavorite() => PokemonCardContent(Image.asset('assets/victini.png'), 'Victini');

}