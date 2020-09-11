
enum SharedPreference {
  lastFavoritePokemon,
  lastSeenPokemon,
  mainTeam
}

extension SharedPreferenceExtension on SharedPreference {

  String get id {
    switch (this) {
      case SharedPreference.lastFavoritePokemon: return "lastFavoritePokemon";
      case SharedPreference.lastSeenPokemon: return "lastSeenPokemon";
      case SharedPreference.mainTeam: return "mainTeam";
    }
  }

}