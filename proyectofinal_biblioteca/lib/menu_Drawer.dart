import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';
import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          Container(
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 300.0,
                        margin: EdgeInsets.only(top: 5.0),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.green, width: 1.5)),
                        ),
                        child: Text(
                          '''
    LEER''',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            _buildDrawerItem(
                                icon: Icons.menu_book,
                                text: 'Libros',
                                onTap: () => {
                                      Navigator.pushReplacementNamed(
                                          context, MyApp.libros)
                                    }),
                            _buildDrawerItem(
                                icon: Icons.account_circle,
                                text: 'Autores',
                                onTap: () => {
                                      Navigator.pushReplacementNamed(
                                          context, MyApp.autores)
                                    }),
                            _buildDrawerItem(
                                icon: Icons.local_offer,
                                text: 'Etiquetas',
                                onTap: () => {
                                      Navigator.pushReplacementNamed(
                                          context, MyApp.etiqueta)
                                    }),
                            _buildDrawerItem(
                                icon: Icons.collections_bookmark,
                                text: 'Colecciones',
                                onTap: () => {
                                      Navigator.pushReplacementNamed(
                                          context, MyApp.colecciones)
                                    }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 300.0,
                        margin: EdgeInsets.only(top: 5.0),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.green, width: 1.5)),
                        ),
                        child: Text(
                          '''
    MÁS LIBROS''',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            _buildDrawerItem(
                                icon: Icons.storefront,
                                text: 'Tienda Feedbooks',
                                onTap: () => {
                                      Navigator.pushReplacementNamed(
                                          context, MyApp.tienda)
                                    }),
                            _buildDrawerItem(
                                icon: Icons.library_books,
                                text: 'Biblioteca',
                                onTap: () => {
                                      Navigator.pushReplacementNamed(
                                          context, MyApp.biblioteca)
                                    }),
                            _buildDrawerItem(
                                icon: Icons.wb_cloudy,
                                text: 'Mis catalogos',
                                onTap: () => {
                                      Navigator.pushReplacementNamed(
                                          context, MyApp.catalogo)
                                    }),
                            _buildDrawerItem(
                                icon: Icons.folder_special,
                                text: 'Archivos',
                                onTap: () => {
                                      Navigator.pushReplacementNamed(
                                          context, MyApp.archivos)
                                    }),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 300.0,
                              margin: EdgeInsets.only(top: 5.0),
                              decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.green, width: 1.5)),
                              ),
                              child: Text(
                                '''
    ACERCA DE''',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  _buildDrawerItem(
                                      icon: Icons.settings,
                                      text: 'Acerca de',
                                      onTap: () => {
                                            Navigator.pushReplacementNamed(
                                                context, MyApp.acerca)
                                          }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            width: 60.0,
            margin: EdgeInsets.only(left: 80.0, right: 80.0),
            child: MaterialButton(
              child: Text(
                "Entrar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.green)),
              minWidth: 60.0,
              height: 40.0,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ),
          Divider(),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/img/fondo.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Library Toms",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
