import 'package:flutter/material.dart';
import 'pagina1.dart';
import 'pagina2.dart';
import 'pagina3.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [Pantalla1(), Pantalla2(), Pantalla3()];

  void onTapped(int index) {
    setState(() {
      indexP = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[indexP],
      bottomNavigationBar:
          Theme(data: Theme.of(context).copyWith(canvasColor: Colors.green, primaryColor: Colors.yellow), 
          child: BottomNavigationBar(onTap: onTapped, currentIndex: indexP, items: [
            BottomNavigationBarItem(icon: Icon(Icons.store_mall_directory_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.cleaning_services), label: ""),
          ],)
          ),
    );
  }
}
