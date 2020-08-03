
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/card_content_home_pokemon.dart';
import 'package:flutterdex/models/card_content_pokemon.dart';
import 'package:flutterdex/widgets/widget_card_home_pokemon.dart';

class RecentActivity extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Flexible(child: HomePokemonCard(HomePokemonCardContent('Última\nvisualização', 'assets/metagross.png', 'Metagross'))),
      Flexible(child: HomePokemonCard(HomePokemonCardContent('Último\nfavorito', 'assets/victini.png', 'Victini')))
    ],
  );

}