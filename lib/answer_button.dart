import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.onTap, {super.key});

  final String text;
  final void Function() onTap;
  @override
  Widget build(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: ElevatedButton(
        onPressed: onTap,

        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(10, 5)),
          ),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(188, 207, 29, 88),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        ),

        child: Text(
          text,
          style: TextStyle(fontSize: 17),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
