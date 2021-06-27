import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  stops: [0.90, 0.5],
                  colors: <Color>[Color(0xffe0aba4e), Colors.white])),
          height: 415,
          width: 415,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 240, left: 90),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.topLeft,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/img/planta1.png"),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              Text(
                "Dracaena",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "Plant",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "Day (estimation):",
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "24",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "Height (incl pot):",
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "4.8''",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "Water:",
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
              Text(
                "Once a week",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.only(top: 400),
              padding: const EdgeInsets.all(30.0),
              child: Text(
                '''
Description
                ''',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 370),
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.green[600],
                  ),
                  Text(
                    "01",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                  Icon(
                    Icons.do_disturb_on_rounded,
                    color: Colors.green[200],
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 470),
          padding: const EdgeInsets.all(0.0),
          child: Text(
            ''' 
      Echinopsis pachanol known as San
      Pedro cactus is a fast-growing colum
      nar cactus native to the Andes Mounta
      at 2,000-3,000 m in altitude. It is found
      in Argentina, Bolivia, Chile.. Read more
            ''',
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 590),
              padding: const EdgeInsets.all(30.0),
              child: Text(
                '''
  \$50.99
                ''',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newsreader'),
              ),
            ),
            Container(
              color: Colors.green[900],
              margin: EdgeInsets.only(top: 590),
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Text(
                    "Add to cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                  Icon(
                    Icons.local_grocery_store_outlined,
                    color: Colors.green[200],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
