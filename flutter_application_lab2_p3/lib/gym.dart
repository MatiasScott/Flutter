import 'package:flutter/material.dart';
import 'gradiente.dart';

class Gym extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Gradiente(),
          Container(
            height: 390.0,
            width: 390.0,
            margin: EdgeInsets.only(top: 90.0, left: 13.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/img/logo.png')),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60.0, left: 15.0),
            child: Text(
              '''
                HARD CORE GYM
              ''',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'stylescript'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100.0, left: 125.0),
            child: Text(
              '''Cadena de Gimnasios \n Desde 1965 \n Historia GOLD'S Ecuador''',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 420.0, left: 15.0),
            child: Text(
              '''En Hard Core Gym encontrará programas integrales
y asistencia en evaluación física, asesoría nutricional
y desarrollo de programa de entrenamiento, máquinas 
cardiovasculares y de entrenamiento de fuerza junto 
con un programa de ejercicio dinámico que incluye 
clases grupales y entrenamiento de resistencia muscular 
con la supervisión de instructores calificados.''',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 550, left: 30.0, right: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        MaterialButton(
                          child: Icon(
                            Icons.link_sharp,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          shape: CircleBorder(
                              //borderRadius: BorderRadius.circular(8)
                              ),
                          minWidth: 40.0,
                          height: 30.0,
                          onPressed: () {},
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text("Facebook"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          child: Icon(
                            Icons.link_sharp,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          shape: CircleBorder(
                              //borderRadius: BorderRadius.circular(8)
                              ),
                          minWidth: 40.0,
                          height: 30.0,
                          onPressed: () {},
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text("Instagram"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          child: Icon(
                            Icons.link_sharp,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          shape: CircleBorder(
                              //borderRadius: BorderRadius.circular(8)
                              ),
                          minWidth: 40.0,
                          height: 30.0,
                          onPressed: () {},
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text("Twiter"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
