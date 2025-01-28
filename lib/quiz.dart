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

  Widget? activeScreen;
  
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }


  @override
  Widget build(BuildContext context) {
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
        child: activeScreen,
      ),
    ),
  );
  }
  
}