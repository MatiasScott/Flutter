import 'package:flutter/material.dart';
import 'package:flutter_application_lab4_p2/gradiente.dart';
import 'package:flutter_application_lab4_p2/home.dart';

import 'botonInk.dart';

class Pagina4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Gradiente(),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/paisaje2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: BotonInk(
              text: "Regresar",
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ),
        ],
      ),
    );
  }
}