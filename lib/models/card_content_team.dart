
import 'package:flutter/cupertino.dart';
import 'package:flutterdex/widgets/widget_pokemon_icon.dart';

class TeamCardContent {

  final String name;
  final List<PokemonIcon> pokemons;
  final bool isInteractive;
  final bool isMain;

  TeamCardContent(this.name, this.pokemons, {this.isInteractive = true, this.isMain = false});

}