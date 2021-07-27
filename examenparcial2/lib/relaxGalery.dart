import 'package:flutter/material.dart';
import 'relaxCard.dart';

class RelaxGalery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 250.0,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          RelaxCard(
            "assets/img/relax.jpg",
          ),
          RelaxCard(
            "assets/img/relax1.jpg",
          ),
          RelaxCard(
            "assets/img/relax2.jpg",
          ),
          RelaxCard(
            "assets/img/relax3.jpg",
          ),
          RelaxCard(
            "assets/img/relax4.jpg",
          ),
        ],
      ),
    );
  }
}
