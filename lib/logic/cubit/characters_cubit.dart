import 'package:bloc/bloc.dart';
import 'package:ui/data/models/character_model.dart';
import 'package:ui/data/repos/characters_repos.dart';
import 'package:ui/logic/cubit/characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepos repos;
  late List<CharacterModel> charts;
  CharactersCubit(this.repos) : super(CharactersInitial());

  List<CharacterModel> getAllCharacters() {
    repos.getAllCharacter().then((character) {
      emit(charactersLoaded(characters: character));
      charts = character;
    });

    return charts;
  }
}
