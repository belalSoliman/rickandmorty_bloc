import 'package:flutter/material.dart';
import 'package:ui/consts/strings.dart';
import 'package:ui/presentation/screen/characters_screen.dart';

class AppRoute {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Strings.charactersScreenRoute:
        return MaterialPageRoute(builder: (context) => CharactersScreen());
      // case '/details':
      //   return MaterialPageRoute(builder: (context) => DetailsPage());
      // Add more cases for other routes here
      default:
      // return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  }
}
