import 'libros.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final txtUserName = TextEditingController();
  final txtPassword = TextEditingController();
  String userName = "";
  String password = "";

  void clearText() {
    txtUserName.clear();
    txtPassword.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.green, width: 1.5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: MaterialButton(
                    child: Icon(
                      Icons.keyboard_backspace_sharp,
                      color: Colors.green,
                      size: 30.0,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    minWidth: 60.0,
                    height: 30.0,
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Libros()))
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 140.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 55.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 00.0, left: 5.0),
                  child: Text(
                    '''Registrate o inicia sesión \n para disfrutar de mas libros.''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
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
              margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
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
                            controller: txtUserName,
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
                            controller: txtPassword,
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
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
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
                        onPressed: () {},
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
                        onPressed: () {
                          userName = txtUserName.text;
                          password = txtPassword.text;
                          if (userName.isEmpty && password.isEmpty) {
                            AlertDialog alert = AlertDialog(
                              title: Text('Campos vacios'),
                              content: Text(
                                  "Bro no puedes dejar campos vacios, ayude llenando"),
                              actions: [
                                MaterialButton(
                                  child: Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                });
                          } else {
                            if (userName == "matias" && password == "12345") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Libros()),
                              );
                              clearText();
                            } else {
                              AlertDialog alert = AlertDialog(
                                title: Text('Error al iniciar sesion'),
                                content: Text(
                                    "El usuario o la contraseña son datos erroneos"),
                                actions: [
                                  MaterialButton(
                                    child: Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      clearText();
                                    },
                                  )
                                ],
                              );
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alert;
                                  });
                            }
                          }
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0),
                        child: Divider(
                          color: Colors.green,
                          thickness: 3.0,
                          height: 25.0,
                        ),
                      ),
                    ),
                    Text(
                      "OR Log in with",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Divider(
                          color: Colors.green,
                          thickness: 3.0,
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
