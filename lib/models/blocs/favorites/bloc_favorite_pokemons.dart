
import 'package:flutterdex/domains/card_content_team.dart';
import 'package:flutterdex/domains/pokemon.dart';
import 'package:flutterdex/models/bloc.dart';
import 'package:flutterdex/models/blocs/favorites/repository_favorite_pokemons.dart';
import 'package:flutterdex/models/blocs/teams/repository_pokemon_teams.dart';

class FavoritePokemonsBloc extends BLoC {

    final repository = FavoritePokemonsRepository();

    void setLastFavorite(Pokemon pokemon) {
        if (pokemon != null) {
            repository.saveLastFavoritePokemonId(pokemon.name); // TODO Implement callback
        }
    }

    Future<String> getLastFavorite() {
        return repository.getLastFavoritePokemonId();
    }

    // TODO Implement favorites management logic

}