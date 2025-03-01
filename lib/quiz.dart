import 'package:flutter/material.dart';
import 'package:quizapk/questions_screen.dart';
import 'package:quizapk/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  } 
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }


  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.cyan,
              Colors.blueAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: screenWidget,
      ),
    ),
  );
  }
  
}