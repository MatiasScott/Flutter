import 'package:flutter/material.dart';
import 'pagina.dart';
import 'imgCard.dart';
import 'pagina2.dart';
import 'pagina3.dart';
import 'pagina4.dart';

class ImgGalery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 250.0,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImgCard(
              img: "assets/img/paisaje1.jpg",
              text: "paisaje 1",
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pagina()));
              }),
          ImgCard(
              img: "assets/img/paisaje2.jpg",
              text: "paisaje 2",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina2()));
              }),
          ImgCard(
              img: "assets/img/paisaje3.jpg",
              text: "paisaje 3",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina3()));
              }),
          ImgCard(
              img: "assets/img/paisaje4.jpg",
              text: "paisaje 4",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina4()));
              }),
        ],
      ),
    );
  }
}
