import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'archivos.dart';
import 'biblioteca.dart';
import 'catalogo.dart';
import 'tienda.dart';
import 'acerca.dart';
import 'etiquetas.dart';
import 'autores.dart';
import 'colecciones.dart';
import 'libros.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String libros = Libros.routeName;
  static const String autores = Autores.routeName;
  static const String colecciones = Colecciones.routeName;
  static const String etiqueta = Etiqueta.routeName;
  static const String acerca = Acerca.routeName;
  static const String archivos = Archivo.routeName;
  static const String biblioteca = Biblioteca.routeName;
  static const String catalogo = Catalogo.routeName;
  static const String tienda = Tienda.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        libros: (context) => Libros(),
        autores: (context) => Autores(),
        etiqueta: (context) => Etiqueta(),
        colecciones: (context) => Colecciones(),
        tienda: (context) => Tienda(),
        biblioteca: (context) => Biblioteca(),
        catalogo: (context) => Catalogo(),
        archivos: (context) => Archivo(),
        acerca: (context) => Acerca(),
      },
      home: Libros(),
    );
  }
}
