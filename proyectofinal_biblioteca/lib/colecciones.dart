import 'menu_Drawer.dart';
import 'package:flutter/material.dart';

class Colecciones extends StatelessWidget {
  static const String routeName = '/colecciones';

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
        title: Text("Colecciones"),
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
              Icons.book,
              color: Colors.grey,
              size: 200.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 260.0, left: 95.0),
            child: Text(
              '''Ninguna colección seleccionada''',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
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
                "Mostrar Colecciones",
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
