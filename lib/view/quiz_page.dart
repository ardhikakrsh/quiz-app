import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/view/question_page.dart';
import 'package:quiz_app/view/result_page.dart';
import 'package:quiz_app/view/welcome_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<String> selectedAnswers = [];
  var activePage = 'welcome-page';

  void switchPage() {
    setState(() {
      activePage = 'question-page';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activePage = 'result-page';
      });
    } else {
      setState(() {
        activePage = 'question-page';
      });
    }
  }

  void onRestart() {
    setState(() {
      selectedAnswers.clear();
      activePage = 'question-page';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = WelcomePage(switchPage);

    if (activePage == 'question-page') {
      screenWidget = QuestionPage(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activePage == 'result-page') {
      screenWidget =
          ResultPage(chosenAnswers: selectedAnswers, onRestart: onRestart);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
