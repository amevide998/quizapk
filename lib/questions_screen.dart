
import 'package:flutter/material.dart';

class QuestionsScreen  extends StatefulWidget{
  const QuestionsScreen({super.key});


  @override
  State<QuestionsScreen> createState(){
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen>{
  @override
  Widget build(Object context) {
    return Center(child: Text('Question Screen'));
  }

}