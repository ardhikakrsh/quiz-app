import 'package:flutter/material.dart';
import 'package:girls_asks_boys_answers/view/quiz_page.dart';

class MyTextButton extends StatelessWidget {
  final String text;

  const MyTextButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const QuizPage(),
          ),
        );
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
