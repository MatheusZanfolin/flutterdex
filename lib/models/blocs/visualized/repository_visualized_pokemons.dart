
import 'package:flutterdex/models/persistence/database/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence/persistence.dart';

class VisualizedPokemonsRepository {

  final Persistence persistence = DatabasePersistence(PokedexDatabase());

}