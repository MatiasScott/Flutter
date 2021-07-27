import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BotonInk extends StatefulWidget {
  final VoidCallback onPressed;
  double heightA = 0;
  double widthA = 0;
  final String text;

  BotonInk(
      {Key key,
      @required this.text,
      @required this.heightA,
      @required this.widthA,
      @required this.onPressed});
  @override
  State<StatefulWidget> createState() {
    return _BotonInk();
  }
}

class _BotonInk extends State<BotonInk> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 120, left: 110, right: 110),
        height: widget.heightA,
        width: widget.widthA,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            gradient: LinearGradient(
                colors: [Colors.red[400], Colors.red[300]],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.7])),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
