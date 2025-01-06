import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/consts/app_colors.dart';
import 'package:ui/data/models/character_model.dart';
import 'package:ui/logic/cubit/characters_cubit.dart';
import 'package:ui/logic/cubit/characters_state.dart';
import 'package:ui/presentation/widgets/characters_item.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<CharacterModel> allCharacter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  Widget buildBlockWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
      if (state is charactersLoaded) {
        allCharacter = state.characters;
        return buildLoadListWidget();
      } else {
        return buildCircularWidget();
      }
    });
  }

  Widget buildCircularWidget() {
    return Center(
        child: CircularProgressIndicator.adaptive(
      backgroundColor: AppColors.myYellow,
    ));
  }

  Widget buildLoadListWidget() {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.myWhite,
        child: Column(
          children: [builCharactersList()],
        ),
      ),
    );
  }

  Widget builCharactersList() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        shrinkWrap: true,
        itemCount: allCharacter.length,
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (ctx, index) {
          return CharactersItem(
            characterModel: allCharacter[index],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.myYellow,
        centerTitle: true,
        title: Text(
          "Rick",
          style: TextStyle(color: AppColors.mygray),
        ),
      ),
      body: buildBlockWidget(),
    );
  }
}
