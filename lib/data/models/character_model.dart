class CharacterModel {
  late int id;
  late String name;
  late String status;
  late String species;
  late String gender;
  late String image;
  late List<dynamic> location;
  late List<dynamic> apperanceOfSesson;
  CharacterModel.fromjSon(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    status = json["status"];
    species = json["species"];
    gender = json["gender"];
    image = json["image"];
    location = json["location"];
    apperanceOfSesson = json["episode"];
    id = json["id"];
  }
}
