
import 'package:flutter/widgets.dart';
import 'package:flutterdex/models/card_content_home_pokemon.dart';
import 'package:flutterdex/models/card_content_pokemon.dart';
import 'package:flutterdex/widgets/widget_pokemon_card.dart';

class HomePokemonCard extends StatelessWidget {

  final HomePokemonCardContent _content;

  HomePokemonCard(this._content);
  
  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(top: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(_content.header,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        PokemonCard(PokemonCardContent(Image.asset(_content.asset), _content.name))
      ],
    ),
  );

}