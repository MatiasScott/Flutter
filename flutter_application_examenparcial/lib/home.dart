import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 330,
            width: 440,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/guayaquil.jpg"),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, right: 270),
                  padding: const EdgeInsets.all(00.0),
                  color: Colors.grey[600],
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, right: 245),
                  color: Colors.grey[800],
                  child: Text(
                    '''Travel''',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    '''
  Top 10
  Adventurous things
  to do in Guayaquil
                  ''',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, left: 180),
            constraints: BoxConstraints.expand(),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(500)),
              minWidth: 80.0,
              height: 20.0,
              onPressed: () {},
              child: Icon(
                Icons.bookmark_border,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, left: 250),
            constraints: BoxConstraints.expand(),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              minWidth: 1.0,
              height: 10.0,
              onPressed: () {},
              child: Icon(
                Icons.reply_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 335),
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/img/dana.jpg"),
                  radius: 20,
                ),
                Text(
                  ''' 
Dana Paola
Junio 15 2 min Road
            ''',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'newsreader'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 415),
            padding: const EdgeInsets.all(0.0),
            child: Text(
              ''' 
        Se encuentra ubicada en la costa del 
        Océano Pacífico en la región litoral de Ecuador.
        La zona este de Guayaquil está a orillas 
        del río Guayas, a unos 20 kilómetros de
        su desembocadura en el Océano Pacífico.
        Desde 1830 forma parte de la República del Ecuador 
        como importante eje económico y político.
            ''',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'newsreader'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 510),
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img/guayaquil1.jpg"),
                    ),
                  ),
                  height: 100,
                  width: 150,
                  margin: EdgeInsets.all(10),
                  padding: const EdgeInsets.all(0.0),
                  alignment: Alignment.center,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img/guayaquil2.jpg"),
                    ),
                  ),
                  height: 100,
                  width: 150,
                  margin: EdgeInsets.all(10),
                  padding: const EdgeInsets.all(0.0),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
