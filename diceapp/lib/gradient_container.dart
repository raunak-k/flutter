import 'package:flutter/material.dart';
import 'package:diceapp/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// final startAlignment = Alignment.topLeft;
// final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hello, World!'),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.firstColor, this.secondColor, {super.key});

//   final Color firstColor;
//   final Color secondColor;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             firstColor,
//             secondColor,
//           ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello, World!'),
//       ),
//     );
//   }
// }
