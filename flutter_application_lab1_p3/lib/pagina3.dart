import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Text(
              '''
We're #1 Food App
Delivery in the country.
              ''',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
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
