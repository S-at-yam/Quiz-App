

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FrontPage(), debugShowCheckedModeBanner: false));
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(color: Colors.deepPurple),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 250),
          const SizedBox(height: 20),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){},
              style: ButtonStyle(shape: WidgetStateProperty.all(RoundedRectangleBorder())),
              child: Text('Start Quiz', style: TextStyle(color: Colors.white),)
          )
        ],
      ),
    );
  }
}
