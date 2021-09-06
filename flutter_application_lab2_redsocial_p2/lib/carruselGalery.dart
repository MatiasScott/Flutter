import 'package:flutter/material.dart';
import 'carruselCard.dart';

class CarruselGalery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: ListView(
        padding: EdgeInsets.all(40.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CarruselCard('assets/img/arigameplay.png'),
          CarruselCard('assets/img/auronplay.jpg'),
          CarruselCard('assets/img/fernanfloo.png'),
          //ImgCard('assets/img/gergamg.jpg'),
          CarruselCard('assets/img/luzu.jpg'),
          CarruselCard('assets/img/willyrex.jpg'),
        ],
      ),
    );
  }
}
