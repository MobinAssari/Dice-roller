import 'package:flutter/material.dart';
import 'package:my_app1/ChangingImage.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(233, 22, 8, 136),
            Color.fromARGB(255, 12, 5, 100)
          ])),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}











