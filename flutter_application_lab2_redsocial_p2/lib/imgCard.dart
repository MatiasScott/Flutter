import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgCard extends StatelessWidget {
  String imgRuta = 'assets/img/arigameplay.png';

  ImgCard(this.imgRuta);
  @override
  Widget build(BuildContext context) {
    final imgCard = Container(
      height: 60.0,
      width: 80.0,
      margin: EdgeInsets.only(left: 5.0, right: 5.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imgRuta)),
          shape: BoxShape.circle,
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
