import 'menu_Drawer.dart';
import 'package:flutter/material.dart';

class Biblioteca extends StatelessWidget {
  static const String routeName = '/biblioteca';

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
          title: Text("Biblioteca"),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: DrawerMenu(),
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60.0, left: 100.0),
              child: Icon(
                Icons.account_balance,
                color: Colors.grey,
                size: 200.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 260.0, left: 105.0),
              child: Text(
                '''No hay bibliotecas añadidas''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 300.0, left: 22.0),
              child: Text(
                '''Puedes agregar las bibliotecas públicas locales
y tomar prestados sus eBooks sin salir de la 
aplicación. Haz clic en el ícono Añadir que esta abajo 
a la derecha.
              ''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                stops: [0.0, 0.8],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Icon(Icons.add),
          ),
        ));
  }
}
