
import 'package:flutterdex/models/persistence/database/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence/persistence.dart';
import 'package:flutterdex/models/persistence/sharedpreferences/persistence_shared_preferences.dart';

class PokemonTeamsRepository {

  final _persistence = SharedPreferencesPersistence();

  void saveMainTeamId(String id) {
    _persistence.saveString(SharedPreference.mainTeam, id);
  }

  Future<String> getMainTeamId() {
    return _persistence.loadString(SharedPreference.mainTeam);
  }

  // TODO Implement team management logic

}