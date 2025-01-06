class CharacterModel {
  late int id;
  late String name;
  late String status;
  late String species;
  late String gender;
  late String image;
  late Map<String, dynamic> location; // Changed to Map<String, dynamic>
  late List<String> appearanceOfSeason; // Changed to List<String>

  CharacterModel.fromjSon(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    status = json["status"];
    species = json["species"];
    gender = json["gender"];
    image = json["image"];
    location = Map<String, dynamic>.from(
        json["location"]); // Ensure this is a Map<String, dynamic>
    appearanceOfSeason =
        List<String>.from(json["episode"]); // Ensure this is a List<String>
  }
}
