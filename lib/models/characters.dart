class Character {
  final String name;
  final String image;
  final String status;
  final String species;
  final String gender;

  Character(
      {required this.name,
      required this.image,
      required this.status,
      required this.species,
      required this.gender});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        name: json["name"],
        image: json["image"],
        status: json["status"],
        species: json["species"],
        gender: json["gender"]);
  }
}
