import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    // final startWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();

    Widget startWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      startWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 44, 12, 80),
                Color.fromARGB(255, 108, 78, 192),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: startWidget,
        ),
      ),
    );
  }
}
