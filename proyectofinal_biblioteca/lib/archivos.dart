import 'menu_Drawer.dart';
import 'package:flutter/material.dart';

class Archivo extends StatefulWidget {
  @override
  _Archivo createState() => _Archivo();
  static const String routeName = '/archivo';
}

class _Archivo extends State<Archivo> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  bool value7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.red],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            stops: [0.0, 0.8],
            tileMode: TileMode.clamp,
          ),
        )),
        title: Text("Archivos"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check_box_sharp,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  height: 25.0,
                  width: 400.0,
                  child: Text(
                    '''ARCHIVOS''',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                CheckboxListTile(
                  title: const Text('Descargas'),
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                  secondary: const Icon(Icons.folder),
                ),
                CheckboxListTile(
                  title: const Text('eBooks'),
                  value: value1,
                  onChanged: (value1) {
                    setState(() {
                      this.value1 = value1;
                    });
                  },
                  secondary: const Icon(Icons.folder),
                ),
                CheckboxListTile(
                  title: const Text('Android'),
                  value: value2,
                  onChanged: (value2) {
                    setState(() {
                      this.value2 = value2;
                    });
                  },
                  secondary: const Icon(Icons.folder),
                ),
                CheckboxListTile(
                  title: const Text('DCIM'),
                  value: value3,
                  onChanged: (value3) {
                    setState(() {
                      this.value3 = value3;
                    });
                  },
                  secondary: const Icon(Icons.folder),
                ),
                CheckboxListTile(
                  title: const Text('Digital Editions'),
                  value: value4,
                  onChanged: (value4) {
                    setState(() {
                      this.value4 = value4;
                    });
                  },
                  secondary: const Icon(Icons.folder),
                ),
                CheckboxListTile(
                  title: const Text('Documents'),
                  value: value5,
                  onChanged: (value5) {
                    setState(() {
                      this.value5 = value5;
                    });
                  },
                  secondary: const Icon(Icons.folder),
                ),
                CheckboxListTile(
                  title: const Text('Telegram'),
                  value: value6,
                  onChanged: (value6) {
                    setState(() {
                      this.value6 = value6;
                    });
                  },
                  secondary: const Icon(Icons.folder),
                ),
                CheckboxListTile(
                  title: const Text('MIUI'),
                  value: value7,
                  onChanged: (value7) {
                    setState(() {
                      this.value7 = value7;
                    });
                  },
                  secondary: const Icon(Icons.folder),
                ),
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
