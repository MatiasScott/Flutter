import 'package:flutter/material.dart';
import 'gradiente.dart';

class Estadistica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Gradiente(),
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Text(
              '''
Estadisticas
              ''',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'stylescript'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0),
            child: Text(
              'We Delivery in Time.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            height: 250.0,
            width: 250.0,
            margin: EdgeInsets.only(top: 40.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain, image: AssetImage('assets/img/img.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}
