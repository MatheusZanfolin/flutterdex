
import 'package:flutter/widgets.dart';

class PokemonIcon extends StatelessWidget {

  final String pokemon;

  PokemonIcon(this.pokemon);

  @override
  Widget build(BuildContext context) => Image.asset('assets/$pokemon.png',
    width: 48,
    height: 48,
    fit: BoxFit.fill,
  );

}