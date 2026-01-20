import 'package:flutter/material.dart';
import 'package:diceapp/dice_roller.dart';
// import 'package:diceapp/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// final startAlignment = Alignment.topLeft;
// final endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: Column(
//           children: [
//             Image.asset(
//               'assets/images/dice-1.png',
//               width: 200,
//             ),
//             ElevatedButton(onPressed: onPressed, child: child),
//             OutlinedButton(onPressed: onPressed, child: child),
//             TextButton(onPressed: onPressed, child: child),
//           ],
//         ),
//       ),
//     );
//   }
// }

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.blueRed({super.key})
    : firstColor = Colors.blue,
      secondColor = Colors.red;

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secondColor,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
