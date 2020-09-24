
import 'package:flutterdex/models/persistence/database/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence/persistence.dart';
import 'package:flutterdex/models/persistence/sharedpreferences/persistence_shared_preferences.dart';

class VisualizedPokemonsRepository {

  final _persistence = SharedPreferencesPersistence();

  Future<bool> saveLastVisualizedPokemonId(String id) {
    return _persistence.saveString(SharedPreference.lastSeenPokemon, id);
  }

  Future<String> getLastVisualizedPokemonId() {
    return _persistence.loadString(SharedPreference.lastSeenPokemon);
  }

}