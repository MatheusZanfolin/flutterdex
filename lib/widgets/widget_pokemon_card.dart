
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdex/domains/card_content_pokemon.dart';
import 'package:flutterdex/widgets/widget_space.dart';

class PokemonCard extends StatelessWidget {

  final PokemonCardContent _pokemon;

  PokemonCard(this._pokemon);

  @override
  Widget build(BuildContext context) => Card(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: Colors.black12, width: 2))
          ),
          child: _pokemon.image
        ),
        buildPokemonCardDetails()
      ],
    ),
  );

  Widget buildPokemonCardDetails() {
    if (_pokemon.isInteractive) {
      return buildInteractiveDetails();
    } else {
      return buildPokemonName();
    }
  }

  Widget buildInteractiveDetails() => Expanded(
    child: Container(
      margin: EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildPokemonName(),
          buildFavoritePokemonIcon()
        ],
      ),
    ),
  );

  Widget buildPokemonName() => Text(_pokemon.name, style: TextStyle(fontSize: 18));

  Widget buildFavoritePokemonIcon() {
    if (_pokemon.isFavorite) {
      return Icon(Icons.favorite, color: Colors.red);
    } else {
      return Icon(Icons.favorite_border);
    }
  }

}