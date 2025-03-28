import 'package:flutter/material.dart';
import 'package:girls_asks_boys_answers/components/my_text_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/quiz-logo.png'),
                height: 300,
                width: 300,
              ),
              SizedBox(height: 30),
              Text(
                'Girls Ask, Boys Answers!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              MyTextButton(
                text: 'Start Quiz',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
