import 'package:flutter/material.dart';
import 'libros.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: <Color>[Colors.purple, Colors.red],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.topLeft,
            constraints: BoxConstraints.expand(),
            child: MaterialButton(
              child: Icon(
                Icons.keyboard_backspace_sharp,
                color: Colors.black54,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              minWidth: 60.0,
              height: 30.0,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Libros()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150.0),
            alignment: Alignment.topCenter,
            child: Text(
              "Library Toms \n  Version 1.0.0",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'stylescript'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 280.0),
            alignment: Alignment.topCenter,
            child: Text(
              '''Lybraty Toms está basado en Aldiko Classic para los usuarios que
              deseen seguir utilizando la versión “clásica” de Aldiko :\n
- Soporte de EPUB, PDF y libro audio así que el DRM Adobe (ACS)
- Soporta el préstamo de libros de la biblioteca
- Personalización de la experiencia de lectura
- Gestión avanzada de su biblioteca personal
- Catálogo integrado que contiene tanto las novedades editoriales como clásicos literarios (gratuitos pues soporta OPDS)\n

Equipo de desarrollo: Matias Valdivieso''',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
