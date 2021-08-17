import 'package:flutter/material.dart';
import 'gradiente.dart';
import 'principal.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Stack(
        children: [
          Gradiente(),
          Principal(),
          Container(
            margin: EdgeInsets.only(top: 100.0, left: 180.0),
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
            height: 215.0,
            width: 215.0,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/pesas.png"),
            ),
          ),
        ],
      ),
    );
  }
}
