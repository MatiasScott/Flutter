import 'package:flutter/material.dart';
import 'ejercicio1.dart';
import 'ejercicio3.dart';
import 'ejercicio2.dart';
import 'gymCard.dart';

class GymGalery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235.0,
      width: 225.0,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GymCard(
              img: "assets/img/img.jpg",
              titulo: "Dumbbel Rows",
              semanas: "16",
              horas: "1Hr 20min",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicio1()));
              }),
          GymCard(
              img: "assets/img/img2.jpg",
              titulo: "Push Ups",
              semanas: "12",
              horas: "0Hr 50min",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicio2()));
              }),
          GymCard(
              img: "assets/img/img3.jpg",
              titulo: "Squates",
              semanas: "8",
              horas: "1Hr 30min",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicio3()));
              }),
        ],
      ),
    );
  }
}
