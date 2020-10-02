
import 'package:flutterdex/domains/pokemon.dart';
import 'package:flutterdex/models/persistence/database/persistence_database.dart';

class SerializablePokemon extends Pokemon implements Serializable<Pokemon> {

  @override
  int id;

  SerializablePokemon(this.id, String name) : super(name);

}

class PokemonSerializer implements Serializer<SerializablePokemon>, Deserializer<SerializablePokemon> {

  @override
  Map<String, Object> serialize(SerializablePokemon serializable) => {
    "id": serializable.id,
    "name": serializable.name
  };

  @override
  SerializablePokemon deserialize(Map<String, Object> mapped) => SerializablePokemon(
      mapped["id"],
      mapped["name"]
  );

}