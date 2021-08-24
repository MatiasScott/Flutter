import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio 3 parcial 3',
      theme: ThemeData(fontFamily: 'newsreader'),
      home: Home(),
    );
  }
}
