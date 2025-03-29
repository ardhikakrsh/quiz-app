import 'package:flutter/material.dart';
import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/view/quiz_page.dart';

class ResultPage extends StatelessWidget {
  final List<String> chosenAnswers;
  final void Function() onRestart;

  const ResultPage({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'user_answer': chosenAnswers[i],
        'correct_answer': questions[i].answers[0],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final totalCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              'You answered $totalCorrectAnswers out of $totalQuestions to questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            // list of questions and answers
            QuestionsSummary(
              summaryData: summaryData,
            ),
            const SizedBox(height: 30),
            // button to restart the quiz
            TextButton.icon(
              icon: const Icon(Icons.restart_alt, color: Colors.white),
              onPressed: onRestart,
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton.icon(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizPage(),
                  ),
                );
              },
              label: const Text(
                'Back to Menu',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
