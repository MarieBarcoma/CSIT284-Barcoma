import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    // final screenWidget = activeScreen == 'start-screen'
    //    ? StartScreen(switchScreen)
    //    : const QuestionsScreen();

    return MaterialApp(
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
          child: screenWidget,
        ),
      ),
    );
  }
}