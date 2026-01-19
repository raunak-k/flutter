import 'package:flutter/material.dart';
import 'package:diceapp/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.blueRed(),
        // body: GradientContainer(
        //   colors: [
        //     Color.fromARGB(255, 16, 55, 228),
        //     Color.fromARGB(255, 32, 116, 196),
        //   ],
        // body: GradientContainer(Colors.blue, Colors.red),
      ),
    ),
  );
}
