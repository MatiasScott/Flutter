import 'package:flutter/material.dart';
import 'package:flutter_application_laboratorio1_v2/gradiente.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Gradiente(),
          Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/img/img7.png'),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.topLeft,
            constraints: BoxConstraints.expand(),
            child: Text(
              'Martini.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'newsreader'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            padding: const EdgeInsets.all(00.0),
            alignment: Alignment.topLeft,
            constraints: BoxConstraints.expand(),
            child: Text(
              '''
                Luxurious
                ''',
              style: TextStyle(
                  color: Colors.amber[600],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'newsreader'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(71.0),
            alignment: Alignment.topLeft,
            constraints: BoxConstraints.expand(),
            child: Text(
              '''
                DRINKS
                ''',
              style: TextStyle(
                  color: Colors.amber[600],
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'newsreader'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 190),
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.topLeft,
            constraints: BoxConstraints.expand(),
            child: Text(
              '''
                Large collection of wines and sprints.
                Martini drinks offers fine selection 
                of wine, sprints like whiskey, vodka,
                run and much more.''',
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
