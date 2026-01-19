import 'package:flutter/material.dart';
import 'package:diceapp/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// final startAlignment = Alignment.topLeft;
// final endAlignment = Alignment.bottomRight;

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
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
