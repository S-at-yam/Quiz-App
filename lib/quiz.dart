import 'package:flutter/material.dart';
import 'package:quiz_app/front_page.dart';
import 'package:quiz_app/question_page.dart';

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
    activeScreen = FrontPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionPage();
    });
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
          // child: Center(child: activeScreen),
          child: activeScreen,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
