import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity:
            VisualDensity.adaptivePlatformDensity, //adaptar a las plataformas
      ),
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/img/img.jpg'),
            ),
            Center(
                child: Container(
              margin: const EdgeInsets.all(30.0),
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
            )),
            Center(
                child: Container(
              margin: const EdgeInsets.all(00.0),
              padding: const EdgeInsets.all(00.0),
              alignment: Alignment.centerLeft,
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
            )),
            Center(
                child: Container(
              margin: const EdgeInsets.all(00.0),
              padding: const EdgeInsets.all(71.0),
              alignment: Alignment.centerLeft,
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
            )),
            Center(
                child: Container(
              margin: const EdgeInsets.all(00.0),
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              constraints: BoxConstraints.expand(),
              child: Text(
                '''


                                
                Large collection of wines and sprints.
                Martini drinks offers fine selection 
                of wine, sprints like whiskey, vodka,
                run and much more.
                
                
                
                
                
                
                
                
                
                
                ''',
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
