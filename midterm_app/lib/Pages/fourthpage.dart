import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:math';

class FourthPage extends StatefulWidget {

  
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  static var listImagesnotFound = [
    "assets/joker.png",
    "assets/king.png",
    "assets/queen.png",];
  static var _random = Random();
  var imageToShow =
      listImagesnotFound[_random.nextInt(listImagesnotFound.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('กดที่ไพ่เพื่ออ่านคำทำนาย')
        ),
       body: Center(
         child: Container(alignment: Alignment.center,
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: Container(
              width: 200,
              height: 300,
              child: Image.asset('assets/card_back.png')),
            back: Container(
              width: 200,
              height: 300,
              child: Image.asset(imageToShow.toString()),
            ),
          ),
         ),
       ),
      floatingActionButton: FloatingActionButton.extended(
       elevation: 2.0,
        icon: const Icon(Icons.refresh),
       label: const Text('ทำนายอีกครั้ง'),
       onPressed: () {
         Navigator.pushNamed(context, '/3');
       }),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
  );
 }
}