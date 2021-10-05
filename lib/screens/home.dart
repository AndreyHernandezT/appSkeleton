import 'dart:ffi';

import 'package:flutter/material.dart';

class PaginaHome extends StatelessWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: Theme.of(context).primaryColor,
                child: CircleAvatar(
                  radius: 47,
                  backgroundImage: NetworkImage(
                      'https://scontent.fbga2-1.fna.fbcdn.net/v/t1.6435-9/153012727_3892514187502439_702718535796277318_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=tPSw411GP78AX_HqHam&_nc_ht=scontent.fbga2-1.fna&oh=9e7135bc682a0f8dba2abe3b28107763&oe=617F5829'),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                      width: 250,
                      child: Text(
                        'Información',
                        style: Theme.of(context).textTheme.headline1,
                      )),
                  SizedBox(
                      width: 250,
                      child: Text(
                        'Proyecto Móvil que se conecta con The Rick and Morty API',
                        style: Theme.of(context).textTheme.headline3,
                      )),
                ],
              )
            ],
          ),
          SizedBox(
            height: 150,
            child: Image.asset("images/background.jpg"),
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3.0, 2.0),
                    blurRadius: 10.0,
                  )
                ]),
            child: Center(
              child: Text(
                'Pulsa el botón "API" en la esquina inferior derecha para ver los personajes principales de la serie Rick and Morty a través de Rick and Morty API.',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3.0, 2.0),
                    blurRadius: 10.0,
                  )
                ]),
            child: Center(
              child: Text(
                'El patrón de diseño Skeleton aparece brevemente mientras se cargan los datos de la API. Para recargar y volver a visualizar el patrón Skeleton, alterna entre ventanas',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Text(
            'Este proyecto es un ejemplo de la funcionalidad de Flutter desarrollado por Andrey Hernández, estudiante de Ingeniería de Sistemas e Informática',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
              color: Colors.blueGrey[200],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
