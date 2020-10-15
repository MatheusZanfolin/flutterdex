
import 'package:flutterdex/models/persistence/database/persistence_database.dart';

class Pokemon extends Serializable {

  final String name;

  Pokemon(int id, this.name) : super(id);

}