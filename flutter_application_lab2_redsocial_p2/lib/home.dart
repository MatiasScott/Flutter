import 'package:flutter/material.dart';
import 'package:flutter_application_lab2_redsocial_p2/imgGalery.dart';
import 'package:flutter_application_lab2_redsocial_p2/carruselGalery.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ImgGalery(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: CarruselGalery(),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    width: 385,
                    margin: EdgeInsets.only(top: 430, bottom: 50, left: 15),
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          '''
  Youtuber
  Junio 26 del 2018
                ''',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'newsreader'),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.bookmark_border,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
