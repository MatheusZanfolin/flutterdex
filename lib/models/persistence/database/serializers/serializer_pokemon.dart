
import 'package:flutterdex/domains/pokemon.dart';
import 'package:flutterdex/models/persistence/database/persistence_database.dart';

class PokemonSerializer implements Serializer<Pokemon>, Deserializer<Pokemon> {

  PokemonSerializer._init();
  static final PokemonSerializer _instance = PokemonSerializer._init();
  factory PokemonSerializer() => _instance;

  @override
  Map<String, Object> serialize(Pokemon serializable) => {
    'id': serializable.id,
    'name': serializable.name
  };

  @override
  Pokemon deserialize(Map<String, Object> mapped) => Pokemon(
      mapped['id'],
      mapped['name']
  );

}