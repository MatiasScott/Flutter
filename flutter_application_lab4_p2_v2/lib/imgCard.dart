import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgCard extends StatefulWidget {
  final VoidCallback onPressed;
  String img = 'assets/img/img.jpg';
  String text;

  ImgCard(
      {Key key,
      @required this.img,
      @required this.text,
      @required this.onPressed});
  @override
  State<StatefulWidget> createState() {
    return _ImgCard();
  }
}

class _ImgCard extends State<ImgCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: widget.onPressed,
          child: Container(
            height: 300.0,
            width: 250.0,
            margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.img),
              ),
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
            ),
          ),
        ),
        Container(
          height: 30.0,
          width: 100.0,
          margin: EdgeInsets.only(top: 250.0, left: 80.0),
          child: Text(
            widget.text,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
