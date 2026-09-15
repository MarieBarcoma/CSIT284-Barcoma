import 'package:flutter/material.dart';
import '../data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> get getSummaryData {
    final List<Map<String, Object>> summary = [];

    for(var i = 0; i < chosenAnswers.length; i++){
      summary.add(
        {
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You answered X out of Y questions correctly!'),
          const SizedBox(height: 30),
          const Text('List of answers and questions'),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.restart_alt),
            onPressed: () {},
            label: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}