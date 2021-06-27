import 'package:flutter/material.dart';
import 'imgCard.dart';

class ImgGalery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 200,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImgCard('assets/img/arigameplay.png'),
          ImgCard('assets/img/auronplay.jpg'),
          ImgCard('assets/img/fernanfloo.png'),
          ImgCard('assets/img/luzu.jpg'),
          ImgCard('assets/img/willyrex.jpg'),
        ],
      ),
    );
  }
}
