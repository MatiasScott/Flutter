import 'package:flutter/material.dart';
import 'package:flutter_application_lab3_p3/login.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio 3 parcial 3',
      theme: ThemeData(fontFamily: 'newsreader'),
      home: Login(),
    );
  }
}
