
import 'package:flutterdex/models/persistence/database/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence/persistence.dart';
import 'package:flutterdex/models/persistence/sharedpreferences/persistence_shared_preferences.dart';

class FavoritePokemonsRepository {

  final _persistence = SharedPreferencesPersistence();

  void saveLastFavoritePokemonId(String id) {
    _persistence.saveString(SharedPreference.lastFavoritePokemon, id);
  }

  Future<String> getLastFavoritePokemonId() {
    return _persistence.loadString(SharedPreference.lastFavoritePokemon);
  }

  // TODO Implement favorites management logic

}