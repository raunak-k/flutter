import 'package:flutter/material.dart';

import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.questionText,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ...currentQuestion.answers.map((answer) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: AnswerButton(
                answerText: answer,
                onPressed: () {},
              ),
            );
          }),
        ],
      ),
    );
  }
}
