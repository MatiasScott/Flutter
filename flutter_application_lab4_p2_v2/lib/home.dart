import 'package:flutter/material.dart';
import 'imgGalery.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left: 20.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/img/jwick.jpg"),
                          radius: 20.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0, right: 20.0),
                        child: MaterialButton(
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 45.0,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          minWidth: 60.0,
                          height: 30.0,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0, left: 20.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Discover",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0, left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        child: Text("Best nature",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                fontFamily: 'newsreader')),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minWidth: 50.0,
                        height: 15.0,
                        onPressed: () {},
                      ),
                      MaterialButton(
                        child: Text("Most nature",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                fontFamily: 'newsreader')),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minWidth: 50.0,
                        height: 15.0,
                        onPressed: () {},
                      ),
                      MaterialButton(
                        child: Text("Recommend",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                fontFamily: 'newsreader')),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minWidth: 50.0,
                        height: 15.0,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                ImgGalery(),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 169.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: <Color>[Colors.lightBlue, Colors.white],
                      )),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Text("Popular Categories",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                    fontFamily: 'newsreader')),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: MaterialButton(
                              child: Text("See All",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'newsreader')),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              minWidth: 60.0,
                              height: 30.0,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              MaterialButton(
                                child: Icon(
                                  Icons.beach_access_sharp,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                shape: CircleBorder(
                                    //borderRadius: BorderRadius.circular(8)
                                    ),
                                minWidth: 60.0,
                                height: 55.0,
                                color: Colors.pinkAccent,
                                onPressed: () {},
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text("Beach"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                child: Icon(
                                  Icons.single_bed_sharp,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                shape: CircleBorder(
                                    //borderRadius: BorderRadius.circular(8)
                                    ),
                                minWidth: 60.0,
                                height: 55.0,
                                color: Colors.deepPurple,
                                onPressed: () {},
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text("Camping"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                child: Icon(
                                  Icons.directions_car_sharp,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                shape: CircleBorder(
                                    //borderRadius: BorderRadius.circular(8)
                                    ),
                                minWidth: 60.0,
                                height: 55.0,
                                color: Colors.lightGreen,
                                onPressed: () {},
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text("Car"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                child: Icon(
                                  Icons.fastfood_sharp,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                shape: CircleBorder(
                                    //borderRadius: BorderRadius.circular(8)
                                    ),
                                minWidth: 60.0,
                                height: 55.0,
                                color: Colors.yellow,
                                onPressed: () {},
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text("Food"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
