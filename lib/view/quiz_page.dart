import 'package:flutter/material.dart';
import 'package:quiz_app/view/question_page.dart';
import 'package:quiz_app/view/welcome_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var activePage = 'welcome-page';

  void switchPage() {
    setState(() {
      activePage = 'question-page';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = WelcomePage(switchPage);

    if (activePage == 'question-page') {
      screenWidget = const QuestionPage();
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
