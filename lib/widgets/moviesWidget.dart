import 'package:app_skeleton/models/Movies.dart';
import 'package:flutter/material.dart';

class MoviesWidget extends StatelessWidget {
  final List<Movie> movies;

  MoviesWidget({required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return ListTile(
            tileColor: Colors.blueGrey[900],
            title: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Image.network(movie.poster),
                ),
                Flexible(
                    child: Column(
                  children: [
                    Text(
                      movie.title,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      "Año: " + movie.year,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ))
              ],
            ),
          );
        });
  }
}
