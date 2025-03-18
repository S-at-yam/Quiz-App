import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(149, 255, 255, 255),
          ),
          const SizedBox(height: 40),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.yellow,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              switchScreen();
            },
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder()),
            ),
            icon: Icon(Icons.arrow_right_alt, color: Colors.white),
            label: Text('Start Quiz', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
