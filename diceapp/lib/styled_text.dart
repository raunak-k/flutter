import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }

  // const StyledText(String text, {super.key}): outputText = text;
  // final String outputText;

  // @override
  // Widget build(BuildContext context) {
  //   return Text(
  //     outputText,
  //     style: const TextStyle(
  //       color: Colors.white,
  //       fontSize: 28,
  //     ),
  //   );
  // }

  // StyledText(String text, {super.key}): outputText = text;
  // String outputText;

  // @override
  // Widget build(BuildContext context) {
  //   return Text(
  //     outputText,
  //     style: const TextStyle(
  //       color: Colors.white,
  //       fontSize: 28,
  //     ),
  //   );
  // }
}
