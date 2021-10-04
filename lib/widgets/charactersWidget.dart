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
            title: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Image.network(character.image),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      character.name,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      "Estado: " + character.status,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Especie: " + character.species,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Genero: " + character.gender,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
