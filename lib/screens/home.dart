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
                radius: 57,
                backgroundColor: Theme.of(context).primaryColor,
                child: CircleAvatar(
                  radius: 52,
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
                        'Proyecto Móvil que se conecta con OMDB API',
                        style: Theme.of(context).textTheme.headline3,
                      )),
                ],
              )
            ],
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
                'En el Botón inferior derecho "API" se muestra la ventana que conecta con el API de OMDB y busca las películas de Batman, para el ejemplo sólo se mostrarán las primeras 20',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
                color: Colors.blueGrey[900],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                  )
                ]),
            child: Center(
              child: Text(
                'Este proyecto es un pequeño ejemplo de la funcionalidad de Flutter desarrollado por Andrey Hernández, estudiante de Ingeniería de Sistemas e Informática',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
