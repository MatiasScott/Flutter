import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboraorio1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola Mundo"),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Hola mundo 2",
              style: TextStyle(color: Colors.amber[700], fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}