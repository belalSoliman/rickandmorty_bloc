import 'package:flutter/material.dart';
import 'package:ui/consts/app_colors.dart';
import 'package:ui/data/models/character_model.dart';

class CharactersItem extends StatelessWidget {
  final CharacterModel characterModel;
  const CharactersItem({super.key, required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
      decoration: BoxDecoration(
        color: AppColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        child: Container(
          color: AppColors.mygray,
          child: characterModel.image.isNotEmpty
              ? FadeInImage.assetNetwork(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: "assets/images/Animation - 1736152589581.gif",
                  image: characterModel.image)
              : Image.asset("assets/images/donut (1).png"),
        ),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            "${characterModel.name}",
            style: TextStyle(
                height: 1.3,
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
