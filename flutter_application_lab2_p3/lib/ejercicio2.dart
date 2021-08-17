import 'package:flutter/material.dart';
import 'gradiente.dart';
import 'navBar.dart';

class Ejercicio2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Gradiente(),
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
                    context, MaterialPageRoute(builder: (context) => NavBar()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0),
            child: Text(
              '''
        Ejercicio #1
        Levantamiento de pesas
              ''',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150.0),
            child: Text(
              '''
    Press de banca

    Sentadillas
    
    Peso muerto
    
    Remo y/o jalones para espalda
    
    Curl o flexión de bíceps
    
    Copa o extensiones para tríceps
    
    Peso muerto para los bíceps femorales 
    o músculos isquiotibiales
    
    Press militar para hombros
    
    Curl o flexión de abdomen con disco
              ''',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
