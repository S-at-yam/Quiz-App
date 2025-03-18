import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});
  @override
  State<QuestionPage> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Text('Question'),
          const SizedBox(height: 30),
          AnswerButton(),
        ],
      ),
    );
  }
}
