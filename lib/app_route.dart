import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/consts/strings.dart';
import 'package:ui/data/api/character_web_services.dart';
import 'package:ui/data/repos/characters_repos.dart';
import 'package:ui/logic/cubit/characters_cubit.dart';
import 'package:ui/presentation/screen/characters_screen.dart';

class AppRoute {
  late CharactersRepos charactersRepos;

  late CharactersCubit charactersCubit;
  AppRoute() {
    charactersRepos = CharactersRepos(CharacterWebServices());
    charactersCubit = CharactersCubit(charactersRepos);
  }

  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Strings.charactersScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (BuildContext context) => CharactersCubit(charactersRepos),
            child: CharactersScreen(),
          ),
        );
      // case '/details':
      //   return MaterialPageRoute(builder: (context) => DetailsPage());
      // Add more cases for other routes here
      default:
      // return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  }
}
