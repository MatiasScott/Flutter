import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Gradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
      begin: FractionalOffset.topCenter,
      end: FractionalOffset.bottomCenter,
      colors: <Color>[Colors.white, Colors.grey],
    )));
  }
}
