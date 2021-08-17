import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PerfilInicio extends StatefulWidget {
  String nombre;

  PerfilInicio({
    Key key,
    @required this.nombre,
  });

  @override
  State<StatefulWidget> createState() {
    return _PerfilInicio();
  }
}

class _PerfilInicio extends State<PerfilInicio> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Hi ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    widget.nombre,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    ",",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
