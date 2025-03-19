import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  children: [
                    Text(((data['questionIndex'] as int) + 1).toString()),
                    Expanded(
                      child: Column(
                        children: [
                          Text(data['question'] as String),
                          const SizedBox(height: 5),
                          Text(data['correctAnswer'] as String),
                          const SizedBox(height: 5),
                          Text(data['selectedAnswer'] as String),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
