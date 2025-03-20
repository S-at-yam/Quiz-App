import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/summary_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(this.chosenAnswers, this.restart, {super.key});

  final List<String> chosenAnswers;
  final void Function() restart;

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
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Text(
            'Answered $numcorrectQues out of $numQues questions correctly!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          SummaryPage(summaryData),
          const SizedBox(height: 30),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: TextButton.icon(
                onPressed: () {
                  restart();
                },
                icon: Icon(Icons.restart_alt, color: Colors.white, size: 30),
                label: Text(
                  'Restart the quiz',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        ],
      ),
    );
  }
}
