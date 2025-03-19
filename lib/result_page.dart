import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/summary_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'questionIndex': i,
        'question': questions[i].text,
        'correctAnswer': questions[i].answers[0],
        'selectedAnswer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    List<Map<String, Object>> summaryData = getSummaryData();
    final numQues = questions.length;
    final numcorrectQues =
        summaryData.where((data) {
          return data['selectedAnswer'] == data['correctAnswer'];
        }).length;
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Answered $numcorrectQues out of $numQues questions correctly!'),
          const SizedBox(height: 30),
          SummaryPage(summaryData),
          const SizedBox(height: 30),
          TextButton(onPressed: () {}, child: Text('Restart the quiz')),
        ],
      ),
    );
  }
}
