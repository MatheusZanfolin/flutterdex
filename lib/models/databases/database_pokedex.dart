
import 'package:flutterdex/models/persistence.dart';

class PokedexDatabase extends LocalDatabase {
  
  @override
  String getPath() => 'pokedex_database.db';

  @override
  int getVersion() => 1;

  @override
  List<Table> getTables() => [
    FavoritePokemonsTable()
  ];
  
}

class FavoritePokemonsTable extends Table {

  @override
  String getName() => 'Favorites';

  @override
  String create() => 'CREATE TABLE Favorites(id INTEGER PRIMARY KEY, name TEXT);';

}