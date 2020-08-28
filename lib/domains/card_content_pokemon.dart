
import 'package:flutter/widgets.dart';

class PokemonCardContent {

  final Image image;
  final String name;
  final bool isInteractive;
  final bool isFavorite;

  PokemonCardContent(this.image, this.name, {this.isInteractive = true, this.isFavorite = false});

}