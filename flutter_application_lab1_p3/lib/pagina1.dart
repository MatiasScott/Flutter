import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Text(
              '''
Are you tired of cooking?
Get in touch!
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
