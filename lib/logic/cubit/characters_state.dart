import 'package:equatable/equatable.dart';
import 'package:ui/data/models/character_model.dart';

abstract class CharactersState extends Equatable {
  const CharactersState();

  @override
  List<Object> get props => [];
}

class CharactersInitial extends CharactersState {}

class charactersLoaded extends CharactersState {
  final List<CharacterModel> characters;

  charactersLoaded({required this.characters});
}
