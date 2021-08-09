import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BotonInk extends StatefulWidget {
  final VoidCallback onPressed;
  String img = "assets/img/img.jpg";
  String text;

  BotonInk({Key key, @required this.text, @required this.onPressed});
  @override
  State<StatefulWidget> createState() {
    return _BotonInk();
  }
}

class _BotonInk extends State<BotonInk> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
        onTap: widget.onPressed,
        child: Container(
            margin: EdgeInsets.only(top: 15, left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: AssetImage(widget.img)),
            )),
      ),
    ]);
  }
}
