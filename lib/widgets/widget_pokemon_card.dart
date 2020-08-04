
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
    child: Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Card(
            elevation: 3,
            shape: CircleBorder(),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Colors.black12
                )
              ),
              child: _content.image,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text(_content.name, style: TextStyle(fontSize: 18)),
          )
        ],
      ),
    ),
  );

}