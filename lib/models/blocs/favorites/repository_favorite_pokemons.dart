
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutterdex/domains/pokemon.dart';
import 'package:flutterdex/models/persistence/database/databases/database_pokedex.dart';
import 'package:flutterdex/models/persistence/database/serializers/serializer_pokemon.dart';
import 'package:flutterdex/models/persistence/persistence.dart';
import 'package:flutterdex/models/persistence/sharedpreferences/persistence_shared_preferences.dart';

class FavoritePokemonsRepository {

  final _preferences = SharedPreferencesPersistence();
  final _database = DatabasePersistence(PokedexDatabase());

  Future<bool> saveLastFavoritePokemonId(String id) {
    return _preferences.saveString(SharedPreference.lastFavoritePokemon, id);
  }

  Future<String> getLastFavoritePokemonId() {
    return _preferences.loadString(SharedPreference.lastFavoritePokemon);
  }

  Future<void> saveFavorite(Pokemon pokemon) {
    return _database.insert(pokemon, FavoritePokemonsTable(), PokemonSerializer.get());
  }

  Future<void> deleteFavorite(Pokemon pokemon) {
    return _database.delete(pokemon, FavoritePokemonsTable());
  }

  Future<List<Pokemon>> loadFavorites() {
    return _database.get(FavoritePokemonsTable(), PokemonSerializer.get());
  }

}