import 'package:flutter/material.dart';
import 'package:diceapp/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 76, 228, 16),
            Color.fromARGB(255, 235, 154, 192),
          ],
        ),
        // body: GradientContainer(Colors.blue, Colors.red),
      ),
    ),
  );
}
