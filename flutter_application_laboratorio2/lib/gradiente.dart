import 'package:flutter/widgets.dart';

class Gradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.bottomRight,
                colors: <Color>[Color(0xffeF478F8), Color(0xffeFDD6FE)])));
  }
}
