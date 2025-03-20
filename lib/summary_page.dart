import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      //color: const Color.fromARGB(150, 209, 114, 193),
      width: MediaQuery.of(context).size.width * 0.8,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            data['correctAnswer'] == data['selectedAnswer']
                                ? Colors.green
                                : Colors.red,
                      ),

                      height: 100,
                      margin: EdgeInsets.only(
                        left: 5,
                        right: 8,
                        bottom: 30,
                        top: 0,
                      ),
                      // color: Colors.white,
                      child: Center(
                        child: Text(
                          ((data['questionIndex'] as int) + 1).toString(),
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Correct Answer: ' +
                                (data['correctAnswer'] as String),
                            style: TextStyle(color: Colors.green),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Your Answer: ' +
                                (data['selectedAnswer'] as String),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 175, 172, 172),
                            ),
                          ),
                          const SizedBox(height: 5),
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
