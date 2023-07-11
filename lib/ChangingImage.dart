import 'dart:math';

import 'package:flutter/material.dart';
class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> {
  var imageList = [
    'android/assets/image/dice-1.png',
    'android/assets/image/dice-2.png',
    'android/assets/image/dice-3.png',
    'android/assets/image/dice-4.png',
    'android/assets/image/dice-5.png',
    'android/assets/image/dice-6.png'
  ];
  var myImage = 'android/assets/image/dice-1.png';
  static var count = 0;
  rollDice() {
    var random = Random();

    if(count>=imageList.length) count =0;
    setState(() {
      myImage = imageList[random.nextInt(imageList.length)];
    });
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(myImage,width: 300),
        TextButton(

            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(30),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(

                    fontSize: 30
                )
            ),
            child: Text("Roll Dice")),
      ],
    );
  }

}