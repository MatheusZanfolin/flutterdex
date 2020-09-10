
import 'package:flutterdex/models/persistence/database/persistence_database.dart';

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
  TableStructure getStructure() => TableStructure('Favorites', {
    'name': FieldType.text
  });

}