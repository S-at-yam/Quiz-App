import 'package:flutter/material.dart';
import 'package:quiz_app/front_page.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: Center(child: FrontPage()),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
