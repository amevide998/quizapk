import 'package:flutter/material.dart';
import 'package:quizapk/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(Object context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The Questions ',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            AnswerButton(answerText: 'Options 1', onTap: () {}),
            AnswerButton(answerText: 'Options 1', onTap: () {}),
            AnswerButton(answerText: 'Options 1', onTap: () {}),
            AnswerButton(answerText: 'Options 1', onTap: () {})
          ],
        ),
      ),
    );
  }
}
