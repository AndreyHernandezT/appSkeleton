import 'dart:convert';

import 'package:app_skeleton/models/characters.dart';
import 'package:app_skeleton/widgets/charactersWidget.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import "package:http/http.dart" as http;

class PaginaAPI extends StatefulWidget {
  @override
  _PaginaAPIState createState() => _PaginaAPIState();
}

class _PaginaAPIState extends State<PaginaAPI> {
  List<Character> _character = [];

  @override
  void initState() {
    super.initState();
    _populateAllcharacters();
  }

  void _populateAllcharacters() async {
    final characters = await _allcharacters();
    setState(() {
      _character = characters;
    });
  }

  Future<List<Character>> _allcharacters() async {
    final response =
        await http.get("https://rickandmortyapi.com/api/character");
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["results"];
      return list.map((character) => Character.fromJson(character)).toList();
    } else {
      throw Exception("Falló la conexión");
    }
  }

  @override
  Widget build(BuildContext context) {
    return charactersWidget(characters: _character);
  }
}