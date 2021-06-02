import 'package:flutter/material.dart';
import 'package:flutter_application_laboratorio1_v2/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Laboratorio',
        theme: ThemeData(
          visualDensity:
              VisualDensity.adaptivePlatformDensity, //adaptar a las plataformas
        ),
        home: Home());
  }
}
