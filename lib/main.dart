import 'package:flutter/material.dart';

import 'package:quiz_app/start_screen.dart';
 
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient (
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 228, 155, 241),
                Colors.purple,
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}

