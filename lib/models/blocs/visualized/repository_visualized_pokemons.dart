
import 'package:flutterdex/models/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence.dart';

class VisualizedPokemonsRepository extends LocalRepository {

  @override
  LocalDatabase getDatabase() => PokedexDatabase();

}