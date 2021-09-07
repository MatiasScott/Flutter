import 'menu_Drawer.dart';
import 'package:flutter/material.dart';

class Catalogo extends StatelessWidget {
  static const String routeName = '/catalogo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/catalogo.jpg"),
                    fit: BoxFit.fill),
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  stops: [0.0, 0.8],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            title: Text(
              'Mis Catalogos',
              style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        drawer: DrawerMenu(),
        backgroundColor: Colors.grey[400],
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 240.0),
              height: 80.0,
              width: 400.0,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    width: 400.0,
                    child: MaterialButton(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              height: 25.0,
                              width: 400.0,
                              child: Text(
                                '''Internet Archive Catalog''',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              height: 25.0,
                              width: 400.0,
                              child: Text(
                                '''https://biblioteca.utpl.edu.ec/catalogo-de-libros-opac''',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {},
                    ),
                  ),
                ],
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
