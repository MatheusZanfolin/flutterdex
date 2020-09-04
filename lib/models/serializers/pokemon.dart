
import 'package:flutterdex/domains/pokemon.dart';
import 'package:flutterdex/models/persistence.dart';

class SerializablePokemon extends Pokemon implements Serializable<Pokemon> {

  @override
  int id;

  SerializablePokemon(this.id, String name) : super(name);

}

class PokemonSerializer extends Serializer<SerializablePokemon> {

  @override
  Map<String, Object> serialize(SerializablePokemon serializable) => {
    "id": serializable.id,
    "name": serializable.name
  };

}

class PokemonDeserializer extends Deserializer<SerializablePokemon> {

  @override
  SerializablePokemon deserialize(Map<String, Object> mapped) => SerializablePokemon(
      mapped["id"],
      mapped["name"]
  );

}