import 'package:flutter/material.dart';
import 'perfil.dart';
import 'estadisticas.dart';
import 'notificaciones.dart';
import 'gym.dart';
import 'home.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [
    Gym(),
    Perfil(),
    Home(),
    Estadistica(),
    Notificaciones(),
  ];

  void onTapped(int index) {
    setState(() {
      indexP = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[indexP],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.red),
          child: BottomNavigationBar(
            onTap: onTapped,
            currentIndex: indexP,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.perm_identity,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_rounded,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.trending_up_sharp,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications_none_sharp,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
            ],
          )),
    );
  }
}
