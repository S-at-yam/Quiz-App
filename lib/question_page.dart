import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage(this.onSelectAnswer, {super.key});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionPage> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  var curQuesIndex = 0;
  void nextQues(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      curQuesIndex++;
    });
  }

  @override
  Widget build(context) {
    final QuizQuestion curQues = questions[curQuesIndex];
    List<String> options = curQues.getShuffledList();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              curQues.text,
              style: GoogleFonts.merriweather(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 30),
          ...options.map((item) {
            return AnswerButton(item, () {
              nextQues(item);
            });
          }),
        ],
      ),
    );
  }
}
