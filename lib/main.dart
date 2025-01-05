import 'package:flutter/material.dart';
import 'package:ui/app_route.dart';

void main() {
  runApp(RickAPP(
    appRoute: AppRoute(),
  ));
}

class RickAPP extends StatelessWidget {
  const RickAPP({super.key, required this.appRoute});
  final AppRoute appRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.generateRoute,
      title: 'rickandmorty',
    );
  }
}
