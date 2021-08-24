import 'package:flutter/material.dart';
import 'login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Stack(
        children: [
          Login(),
        ],
      ),
    );
  }
}
