import 'package:app_skeleton/models/characters.dart';
import 'package:flutter/material.dart';
import 'package:app_skeleton/widgets/SkeletonWidget.dart';

class charactersWidget extends StatelessWidget {
  final List<Character> characters;
  bool loading;

  //final loadings = globals.loading;
  charactersWidget({required this.characters, required this.loading});

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return ListTile(
            leading: SkeletonWidget.rectangular(width: 60, height: 70),
            title: SkeletonWidget.text(width: 70, height: 16),
            subtitle:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 3),
              SkeletonWidget.text(width: 60, height: 8),
              SizedBox(height: 3),
              SkeletonWidget.text(width: 60, height: 8),
              SizedBox(height: 3),
              SkeletonWidget.text(width: 60, height: 8),
            ]),
          );
        },
      );
    } else {
      return ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];

          return buildCharacters(character, context);
        },
      );
    }
  }

  Widget buildCharacters(Character character, BuildContext context) {
    return ListTile(
      tileColor: Colors.blueGrey[900],
      title: Text(
        character.name,
        style: Theme.of(context).textTheme.headline3,
      ),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Estado: " + character.status,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          "Especie: " + character.species,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          "Genero: " + character.gender,
          style: Theme.of(context).textTheme.headline4,
        )
      ]),
      leading: Image.network(character.image),
    );
  }
}
