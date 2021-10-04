import 'dart:convert';

import 'package:app_skeleton/models/Movies.dart';
import 'package:app_skeleton/widgets/moviesWidget.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import "package:http/http.dart" as http;

class PaginaAPI extends StatefulWidget {
  @override
  _PaginaAPIState createState() => _PaginaAPIState();
}

class _PaginaAPIState extends State<PaginaAPI> {
  List<Movie> _movies = [];

  @override
  void initState() {
    super.initState();
    _populateAllMovies();
  }

  void _populateAllMovies() async {
    final movies = await _allMovies();
    setState(() {
      _movies = movies;
    });
  }

  Future<List<Movie>> _allMovies() async {
    final response =
        await http.get("https://www.omdbapi.com/?s=Batman&apikey=564727fa");
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["Search"];
      return list.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Falló la conexión");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MoviesWidget(movies: _movies);
  }
}
