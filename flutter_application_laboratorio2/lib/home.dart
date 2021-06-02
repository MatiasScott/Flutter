import 'package:flutter/material.dart';
import 'package:flutter_application_laboratorio2/gradiente.dart';               //no se como mandar el gradiente dentro del container

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.bottomLeft,
                  end: FractionalOffset.bottomRight,
                  colors: <Color>[Color(0xffeF478F8), Color(0xffeFDD6FE)])),
          height: 250,
          width: 250,
          margin: EdgeInsets.only(bottom: 255),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.center,
          child: Image(
            fit: BoxFit.cover,
            color: Colors.blueAccent[900],
            image: AssetImage("assets/img/cactusV2.png"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.only(top: 240),
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Cactus",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 250),
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Calificación",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.only(top: 320),
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "\$19",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 300),
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star_sharp,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_sharp,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_sharp,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_half,
                    color: Colors.yellow,
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 540),
          padding: const EdgeInsets.all(0.0),
          child: Text(
            ''' 
            Elige la opción que más te gusta y nosotros nos encargamos
            de personalizar tus recuerdos (tu eliges los colores
            y el tipo de piedras decorativas), y listo!!
            ''',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 540),
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.bottomCenter,
          constraints: BoxConstraints.expand(),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            minWidth: 370.0,
            height: 60.0,
            onPressed: () {},
            color: Colors.blue[800],
            child: Text('Comprar ya', style: TextStyle(color: Colors.white)),
          ),
        )
      ],
    ));
  }
}
