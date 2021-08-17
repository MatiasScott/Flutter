import 'package:flutter/material.dart';
import 'gymGalery.dart';
import 'gym.dart';
import 'perfilInicio.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.0, right: 20.0),
                  child: MaterialButton(
                    child: Icon(
                      Icons.keyboard_backspace_sharp,
                      color: Colors.black,
                      size: 35.0,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    minWidth: 60.0,
                    height: 30.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gym()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0, right: 35.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0, right: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/img/jwick.jpg"),
                    radius: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      PerfilInicio(nombre: "Matias"),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 20.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Get in Shape",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'stylescript'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  height: 140.0,
                  width: 370.0,
                  decoration: BoxDecoration(
                      color: Colors.orange[700],
                      borderRadius: BorderRadius.circular(25)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0, left: 20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Popular Excersice",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'stylescript'),
            ),
          ),
          GymGalery(),
        ],
      ),
    );
  }
}
