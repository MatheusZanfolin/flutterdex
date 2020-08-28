
import 'package:flutterdex/models/database.dart';
import 'package:flutterdex/models/persistence.dart';

class VisualizedPokemonsRepository extends LocalRepository {

  @override
  LocalDatabase getDatabase() => PokedexDatabase();

}