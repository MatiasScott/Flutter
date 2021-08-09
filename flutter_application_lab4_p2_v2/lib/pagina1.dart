import 'package:flutter/material.dart';
import 'home.dart';
import 'gradiente.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Gradiente(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              image: DecorationImage(
                image: AssetImage("assets/img/img1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0, left: 30.0),
            child: Text(
              '''
Explore the
earth with us
                    ''',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'newsreader'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 100.0),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.bottomCenter,
            constraints: BoxConstraints.expand(),
            child: MaterialButton(
              child: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.black54,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              minWidth: 60.0,
              height: 30.0,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 0.0),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.bottomRight,
            constraints: BoxConstraints.expand(),
            child: MaterialButton(
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              minWidth: 60.0,
              height: 40.0,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
