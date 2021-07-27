import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RelaxCard extends StatelessWidget {
  String img = "assets/img/relax.jpg";

  RelaxCard(this.img);
  @override
  Widget build(BuildContext context) {
    final relaxCard = Container(
      height: 300.0,
      width: 400.0,
      margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img)),
      ),
    );
    return relaxCard;
  }
}
