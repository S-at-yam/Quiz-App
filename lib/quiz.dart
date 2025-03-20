import 'package:flutter/material.dart';
import 'package:quiz_app/front_page.dart';
import 'package:quiz_app/question_page.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  //var activeScreen= 'start-screen';

  List<String> selectedAnswers = [];
  @override
  void initState() {
    activeScreen = FrontPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionPage(chooseAnswer);
      // activeScreen = 'question-screen';
    });
  }

  void reStart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = FrontPage(switchScreen);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultPage(selectedAnswers, reStart);
      });
    }
  }

  @override
  MaterialApp build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 51, 2, 59),
                const Color.fromARGB(255, 126, 125, 125),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: activeScreen,
          // child: activeScreen=='start-screen': Frontpage(switchScreen): QuestionPage(switchScreen);
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
