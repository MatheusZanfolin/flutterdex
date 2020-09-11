
import 'package:flutterdex/models/persistence/database/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence/persistence.dart';
import 'package:flutterdex/models/persistence/sharedpreferences/persistence_shared_preferences.dart';

class PokemonTeamsRepository {

  final persistence = SharedPreferencesPersistence();

  void saveMainTeamId(String id) {
    persistence.saveString(SharedPreference.mainTeam, id);
  }

  Future<String> getLastFavoritePokemonId() {
    return persistence.loadString(SharedPreference.mainTeam);
  }

}