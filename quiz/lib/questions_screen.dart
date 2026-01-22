import 'package:flutter/material.dart';

import 'package:quiz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Questions Screen',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          AnswerButton(
            answerText: 'Answer 1',
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: 'Answer 2',
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: 'Answer 3',
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: 'Answer 4',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
