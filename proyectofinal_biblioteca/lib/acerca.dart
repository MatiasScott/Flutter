import 'menu_Drawer.dart';
import 'package:flutter/material.dart';

class Acerca extends StatefulWidget {
  @override
  _Acerca createState() => _Acerca();
  static const String routeName = '/acerca';
}

class _Acerca extends State<Acerca> {
  bool value = false;
  bool value1 = false;

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
          title: Text("Acerca de la APP"),
        ),
        drawer: DrawerMenu(),
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    height: 25.0,
                    width: 400.0,
                    child: Text(
                      '''Configuración Avanzada''',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 400.0,
                    child: MaterialButton(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Cuentas DRM",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
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
            Divider(),
            Container(
              margin: EdgeInsets.only(top: 100.0, left: 15.0, right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    height: 25.0,
                    width: 400.0,
                    child: Text(
                      '''Parámetros Generales''',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  CheckboxListTile(
                    title: Text(
                      "Almacenamiento de archivos",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      "Descargar archivos con WI-FI",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    value: value1,
                    onChanged: (value1) {
                      setState(() {
                        this.value1 = value1;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.only(top: 250.0, left: 15.0, right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    height: 25.0,
                    width: 400.0,
                    child: Text(
                      '''Anotaciones''',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 400.0,
                    child: MaterialButton(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Anotaciones de Exportación",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 400.0,
                    child: MaterialButton(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Restaurar Anotaciones",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
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
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
