
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdex/models/card_content_pokemon.dart';

class PokemonCard extends StatelessWidget {

  final PokemonCardContent _content;

  PokemonCard(this._content);

  @override
  Widget build(BuildContext context) => Card(
    child: Column(
      children: [
        Container(
          child: _content.image,
        ),
        Divider(thickness: 2, color: Colors.black12),
        Container(
          margin: EdgeInsets.only(top: 4, bottom: 12),
          child: Text(_content.name, style: TextStyle(fontSize: 18)),
        )
      ],
    ),
  );

}