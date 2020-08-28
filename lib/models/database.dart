
import 'package:flutterdex/models/persistence.dart';

class PokedexDatabase extends LocalDatabase {
  
  @override
  String getPath() => 'pokedex_database.db';

  @override
  int getVersion() => 1;

  @override
  List<Table> getTables() => []; // TODO
  
}