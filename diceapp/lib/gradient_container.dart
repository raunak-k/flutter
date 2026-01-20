import 'package:flutter/material.dart';
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

void rollDice() {
  print('Dice rolled!');
}

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
