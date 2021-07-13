import 'package:flutter/material.dart';
import 'package:flutter_application_lab4_p2/imgGalery.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: ListView(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0, left: 20.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/img/jwick.jpg"),
                        radius: 30,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.0, right: 20.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0, left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Discover",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'newsreader'),
                ),
              ),
              ImgGalery(),
            ],
          ))
        ],
      ),
    );
  }
}
