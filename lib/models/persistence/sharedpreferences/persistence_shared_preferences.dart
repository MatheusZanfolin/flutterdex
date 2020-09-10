
enum SharedPreference {
  lastFavoritePokemon,
  lastSeenPokemon,
  yourTeam
}

extension SharedPreferenceExtension on SharedPreference {

  String get id {
    switch (this) {
      case SharedPreference.lastFavoritePokemon: return "lastFavoritePokemon";
      case SharedPreference.lastSeenPokemon: return "lastSeenPokemon";
      case SharedPreference.yourTeam: return "yourTeam";
    }
  }

}