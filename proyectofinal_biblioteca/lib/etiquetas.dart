import 'menu_Drawer.dart';
import 'package:flutter/material.dart';

class Etiqueta extends StatelessWidget {
  static const String routeName = '/etiqueta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.red],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            stops: [0.0, 0.8],
            tileMode: TileMode.clamp,
          ),
        )),
        title: Text("Etiqueta"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 60.0, left: 100.0),
            child: Icon(
              Icons.local_offer,
              color: Colors.grey,
              size: 200.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 260.0, left: 65.0),
            child: Text(
              '''Ninguna Etiqueta seleccionada''',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  stops: [0.0, 0.8],
                  tileMode: TileMode.clamp,
                ),
                color: Colors.green,
                borderRadius: BorderRadius.circular(5.0)),
            width: 185.0,
            margin: EdgeInsets.only(top: 300.0, left: 110.0),
            child: MaterialButton(
              child: Text(
                "Mostrar Etiquetas",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              minWidth: 60.0,
              height: 30.0,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
