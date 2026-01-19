import 'package:flutter/material.dart';
import 'package:diceapp/styled_text.dart';

class GradientContainer extends StatelessWidget {

  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 182, 8, 159),
            Color.fromARGB(255, 235, 154, 192),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
