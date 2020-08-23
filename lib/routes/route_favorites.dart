
import 'package:flutter/cupertino.dart';
import 'package:flutterdex/models/card_content_pokemon.dart';
import 'package:flutterdex/widgets/widget_pokemon_card.dart';
import 'package:flutterdex/widgets/widget_screen.dart';

class FavoritesRoute extends StatelessWidget {

  final List<PokemonCardContent> _favorites = getFavorites();

  @override
  Widget build(BuildContext context) => Screen(
    title: 'Meus favoritos',
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: _favorites.length,
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.only(bottom: 8),
        child: PokemonCard(_favorites[index]),
      )
    ),
  );

  static List<PokemonCardContent> getFavorites() => [
    getVictini(),
    getZekrom(),
    getToxapex()
  ];

  static PokemonCardContent getVictini() => PokemonCardContent(
      Image.asset('assets/victini.png'),
      "Victini",
      isInteractive: true,
      isFavorite: true
  );

  static PokemonCardContent getZekrom() => PokemonCardContent(
      Image.asset('assets/zekrom.png'),
      "Zekrom",
      isInteractive: true,
      isFavorite: true
  );

  static PokemonCardContent getToxapex() => PokemonCardContent(
    Image.asset('assets/toxapex.png'),
    "Toxapex",
    isInteractive: true,
    isFavorite: true
  );

}