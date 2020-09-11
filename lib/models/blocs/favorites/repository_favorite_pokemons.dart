
import 'package:flutterdex/models/persistence/database/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence/persistence.dart';
import 'package:flutterdex/models/persistence/sharedpreferences/persistence_shared_preferences.dart';

class FavoritePokemonsRepository {

  final persistence = SharedPreferencesPersistence();

  void saveLastFavoritePokemonId(String id) {
    persistence.saveString(SharedPreference.lastFavoritePokemon, id);
  }

  Future<String> getLastFavoritePokemonId() {
    return persistence.loadString(SharedPreference.lastFavoritePokemon);
  }

}