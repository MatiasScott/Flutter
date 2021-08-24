import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
            height: 90.0,
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 1.5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.0, right: 20.0),
                  child: MaterialButton(
                    child: Icon(
                      Icons.keyboard_backspace_sharp,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    minWidth: 60.0,
                    height: 30.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0, right: 170.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 00.0, left: 5.0),
                  child: Text(
                    '''Sign up or log in \n to enjoy free comics.''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  margin: EdgeInsets.only(left: 35.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/user1.png')),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 140.0,
              margin: EdgeInsets.only(top: 265.0, left: 15.0, right: 15.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(5.0)),
                    margin: EdgeInsets.only(top: 3.0),
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.mail_outline_sharp,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                        new Expanded(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Email Address",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                            ),
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(5.0)),
                    margin: EdgeInsets.only(top: 3.0),
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.lock_outline_sharp,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                        new Expanded(
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              isDense: true,
                            ),
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 390.0, left: 15.0, right: 15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5.0)),
                      width: 185.0,
                      margin: EdgeInsets.only(top: 15.0),
                      child: MaterialButton(
                        child: Text(
                          "Sign up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minWidth: 60.0,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5.0)),
                      width: 185.0,
                      margin: EdgeInsets.only(top: 15.0, left: 8.0),
                      child: MaterialButton(
                        child: Text(
                          "Log in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minWidth: 60.0,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  child: MaterialButton(
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.grey,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    minWidth: 60.0,
                    height: 30.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 505.0, left: 15.0, right: 15.0),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 25.0,
                        ),
                      ),
                    ),
                    Text(
                      "OR Log in with",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 25.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FacebookAuthButton(
                        onPressed: () {},
                        style: AuthButtonStyle(
                            buttonType: AuthButtonType.icon,
                            height: 40.0,
                            width: 70.0,
                            separator: 10.0),
                      ),
                      TwitterAuthButton(
                        onPressed: () {},
                        style: AuthButtonStyle(
                            buttonType: AuthButtonType.icon,
                            height: 40.0,
                            width: 70.0,
                            separator: 10.0),
                      ),
                      GoogleAuthButton(
                        onPressed: () {},
                        style: AuthButtonStyle(
                            buttonType: AuthButtonType.icon,
                            height: 40.0,
                            width: 70.0,
                            separator: 10.0),
                      ),
                      AppleAuthButton(
                        onPressed: () {},
                        style: AuthButtonStyle(
                            buttonType: AuthButtonType.icon,
                            height: 40.0,
                            width: 70.0,
                            separator: 10.0),
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
