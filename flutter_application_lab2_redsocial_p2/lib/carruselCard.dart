import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarruselCard extends StatelessWidget {
  String imgRuta = 'assets/img/arigameplay.png';

  CarruselCard(this.imgRuta);
  @override
  Widget build(BuildContext context) {
    final imgCard = Container(
      height: 100,
      width: 300,
      margin: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 10),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imgRuta)),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,

                ///posicionamiento de la sombra
                offset: Offset(0.0, 7.0))
          ]),
    );
    return imgCard;
  }
}
