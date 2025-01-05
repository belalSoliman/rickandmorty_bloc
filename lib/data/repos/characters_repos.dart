import 'package:ui/data/api/character_web_services.dart';
import 'package:ui/data/models/character_model.dart';

class CharactersRepos {
  final CharacterWebServices characterWebServices;

  CharactersRepos(this.characterWebServices);
  Future<List<dynamic>> getAllCharacter() async {
    final characters = await characterWebServices.getAllCharacter();
    return characters
        .map((character) => CharacterModel.fromjSon(character))
        .toList();
  }
}
