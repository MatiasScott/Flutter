import 'package:flutter/material.dart';
import 'login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 300.0, left: 140.0),
            child: Text(
              "Home",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50.0),
            ),
          )
        ],
      ),
    );
  }
}
