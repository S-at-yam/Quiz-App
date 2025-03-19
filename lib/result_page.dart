import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});
  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Answered X out of Y questions correctly!'),
          const SizedBox(height: 30),
          Text('List of answers'),
          const SizedBox(height: 30),
          TextButton(onPressed: () {}, child: Text('Restart the quiz')),
        ],
      ),
    );
  }
}
