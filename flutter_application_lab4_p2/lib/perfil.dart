import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Perfil extends StatefulWidget {
  String imgRut = 'assets/img/jwick.jpg';
  double heightA = 0;
  double widthA = 0;

  Perfil(
      {Key? key,
      required this.imgRut,
      required this.heightA,
      required this.widthA});

  @override
  State<StatefulWidget> createState() {
    return _Perfil();
  }
}

class _Perfil extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(30),
      height: widget.heightA,
      width: widget.widthA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain, image: AssetImage(widget.imgRut)),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 70),
            child: Icon(
              Icons.search_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
