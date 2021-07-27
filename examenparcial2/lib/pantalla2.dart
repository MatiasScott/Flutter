import 'package:flutter/material.dart';
import 'home.dart';

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Image(
              height: 350,
              width: 350,
              fit: BoxFit.cover,
              image: AssetImage('assets/img/relax5.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.topLeft,
            child: MaterialButton(
              child: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              minWidth: 60.0,
              height: 30.0,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 350, left: 110),
            child: Text(
              'Relax Your Mind',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 380, left: 150),
            child: Text(
              'Day episode',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 300),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Icon(
                    Icons.save_alt_rounded,
                    color: Colors.grey,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minWidth: 60.0,
                  height: 30.0,
                  onPressed: () {},
                ),
                MaterialButton(
                  child: Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.grey,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minWidth: 60.0,
                  height: 30.0,
                  onPressed: () {},
                ),
                MaterialButton(
                  child: Icon(
                    Icons.maps_ugc_sharp,
                    color: Colors.grey,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minWidth: 60.0,
                  height: 30.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
