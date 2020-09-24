
import 'package:flutterdex/domains/card_content_team.dart';
import 'package:flutterdex/models/bloc.dart';
import 'package:flutterdex/models/blocs/teams/repository_pokemon_teams.dart';

class PokemonTeamsBloc extends BLoC {

    final repository = PokemonTeamsRepository();

    void setMainTeam(TeamCardContent team) { // TODO Review data class
        if (team != null) {
            repository.saveMainTeamId(team.name); // TODO Implement callback
        }
    }

    Future<String> getMainTeam() {
        return repository.getMainTeamId();
    }

    // TODO Implement team management logic

}