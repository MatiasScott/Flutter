import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GymCard extends StatefulWidget {
  final VoidCallback onPressed;
  String img = "assets/img/img.jpg";
  String titulo;
  String semanas;
  String horas;

  GymCard({
    Key key,
    @required this.img,
    @required this.titulo,
    @required this.semanas,
    @required this.horas,
    @required this.onPressed,
  });

  @override
  State<StatefulWidget> createState() {
    return _GymCard();
  }
}

class _GymCard extends State<GymCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: widget.onPressed,
          child: Container(
            height: 200.0,
            width: 150.0,
            margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.img),
              ),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
        Container(
          height: 50.0,
          width: 110.0,
          margin: EdgeInsets.only(top: 160.0, left: 30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      widget.titulo,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      widget.semanas,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "workouts",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(
                      Icons.alarm_sharp,
                      color: Colors.black,
                      size: 15.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      widget.horas,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
