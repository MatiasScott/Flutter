import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EQUIPO',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity:
            VisualDensity.adaptivePlatformDensity, //adaptar a las plataformas
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Deadpool"),
          ),
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/deadpool.jpg"),
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blueGrey,
                  constraints: BoxConstraints.expand(),
                  child: Text(
                    '''
                    Bien, valoremos los pros y contras de ser superhéroe
                    Pro: tienen chicas por montones
                    Descuentos en lavado en seco
                    Lucrativos contratos de cine, precuelas y películas con otros superhéroes
                    Contras: todos son unos ñoños respetuosos de la ley
                    ''',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
