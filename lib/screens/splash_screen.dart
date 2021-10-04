import 'package:flutter/material.dart';

import 'home.dart';
import 'movieApi.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int paginaActual = 0;
  List<Widget> paginas = [
    PaginaHome(),
    PaginaAPI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: paginas[paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: paginaActual,
          onTap: (index) {
            setState(() {
              paginaActual = index;
            });
          },
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'API')
          ],
        ));
  }
}
