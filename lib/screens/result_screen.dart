import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('You answered X out of Y questions correctly!'),
        const SizedBox(height: 30),
        const Text('List of answers and questions'),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Restart Quiz!'),
        ),
      ],
    );
  }
}