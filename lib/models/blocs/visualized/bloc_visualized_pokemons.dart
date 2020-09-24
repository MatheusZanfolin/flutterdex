
import 'package:flutterdex/domains/pokemon.dart';
import 'package:flutterdex/models/bloc.dart';
import 'package:flutterdex/models/blocs/visualized/repository_visualized_pokemons.dart';

class VisualizedPokemonsBloc extends BLoC {

    final repository = VisualizedPokemonsRepository();

    void setLastVisualizedPokemon(Pokemon pokemon) {
        if (pokemon != null) {
            repository.saveLastVisualizedPokemonId(pokemon.name); // TODO Review identifier
        }
    }

    Future<String> getLastVisualizedPokemon() {
        return repository.getLastVisualizedPokemonId();
    }

}