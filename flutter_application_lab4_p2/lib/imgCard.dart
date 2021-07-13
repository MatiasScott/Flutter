/*import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgCard extends StatelessWidget {
  String imgRuta = "assets/img/paisaje1.jpg";

  ImgCard(this.imgRuta);
  @override
  Widget build(BuildContext context) {
    final imgCard = Container(
      height: 250.0,
      width: 200.0,
      margin: EdgeInsets.only(top: 5.0, left: 5.0, right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imgRuta)),
      ),
    );
    return imgCard;
  }
}*/

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgCard extends StatefulWidget {
  final VoidCallback onPressed;
  String img = "assets/img/paisaje2.jpg";
  String text;

  ImgCard(
      {Key? key,
      required String img,
      required this.text,
      required this.onPressed});
  @override
  State<StatefulWidget> createState() {
    return _ImgCard();
  }
}

class _ImgCard extends State<ImgCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
        onTap: widget.onPressed,
        child: Container(
          height: 300,
          width: 200,
          margin: EdgeInsets.only(top: 15, left: 15, right: 15),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(widget.img),
            ),
            borderRadius: BorderRadius.all(Radius.circular(35)),
          ),
        ),
      ),
      Container(
        height: 30,
        width: 100,
        margin: EdgeInsets.only(top: 250, left: 80),
        child: Text(
          widget.text,
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ]);
  }
}
