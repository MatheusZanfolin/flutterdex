
import 'package:flutterdex/models/persistence/database/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence/persistence.dart';
import 'package:flutterdex/models/persistence/sharedpreferences/persistence_shared_preferences.dart';

class VisualizedPokemonsRepository {

  final persistence = SharedPreferencesPersistence();

  void saveLastVisualizedPokemonId(String id) {
    persistence.saveString(SharedPreference.lastSeenPokemon, id);
  }

  Future<String> getLastVisualizedPokemonId() {
    return persistence.loadString(SharedPreference.lastSeenPokemon);
  }

}