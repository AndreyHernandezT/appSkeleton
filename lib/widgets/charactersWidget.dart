import 'package:app_skeleton/models/characters.dart';
import 'package:flutter/material.dart';

class charactersWidget extends StatelessWidget {
  final List<Character> characters;

  charactersWidget({required this.characters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];
          return ListTile(
            tileColor: Colors.blueGrey[900],
            title: Text(
              character.name,
              style: Theme.of(context).textTheme.headline3,
            ),
            subtitle:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        });
  }
}
