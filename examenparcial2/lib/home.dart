import 'package:flutter/material.dart';
import 'botonInk.dart';
import 'relaxGalery.dart';
import 'pantalla2.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 40),
          child: Text(
            'Welcome To,',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            'Meditation Care',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        RelaxGalery(),
        Container(
          child: Text(
            '''
Loren ipsum dolor sit amet, consectetur
adipiscing elit. Orci orci suscripit
                  ''',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ),
        BotonInk(
          text: "Relax Your Mine",
          heightA: 50,
          widthA: 40,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Pantalla2()));
          },
        )
      ],
    )));
  }
}
