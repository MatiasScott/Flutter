import 'package:flutter/material.dart';
import 'imgCard.dart';
import 'pagina.dart';
import 'pagina1.dart';
import 'pagina2.dart';
import 'pagina3.dart';

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
              img: 'assets/img/img.jpg',
              text: "paisaje 1",
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pagina()));
              }),
          ImgCard(
              img: 'assets/img/img1.jpg',
              text: "paisaje 2",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina1()));
              }),
          ImgCard(
              img: 'assets/img/img2.jpg',
              text: "paisaje 3",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina2()));
              }),
          ImgCard(
              img: 'assets/img/img3.jpg',
              text: "paisaje 4",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina3()));
              }),
        ],
      ),
    );
  }
}
