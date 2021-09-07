import 'menu_Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Libros extends StatelessWidget {
  static const String routeName = '/libros';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                text: 'Lecturas Recientes',
              ),
              Tab(
                text: 'Librerias',
              ),
              Tab(
                text: 'Añadidos Recientemente',
              ),
            ],
          ),
          title: Text("Libros"),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Más Libros",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer: DrawerMenu(),
        body: TabBarView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Icon(
                      Icons.menu_book,
                      color: Colors.grey,
                      size: 200.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80.0),
                    child: Text(
                      '''Ningún libro leído recientemente''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Icon(
                      Icons.menu_book,
                      color: Colors.grey,
                      size: 200.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80.0),
                    child: Text(
                      '''Ningún libro''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Icon(
                      Icons.menu_book,
                      color: Colors.grey,
                      size: 200.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      '''Sin contenidos agregados Recientemente''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      '''Usted no ha descargado ningún nuevo \n libro en los últimos 15 días.''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5.0)),
                    width: 185.0,
                    margin: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: MaterialButton(
                      child: Text(
                        "Más libros",
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
            ),
          ],
        ),
      ),
    );
  }
}
