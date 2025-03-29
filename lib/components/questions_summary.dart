import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: (data['user_answer'] == data['correct_answer'])
                      ? const Color.fromARGB(255, 150, 198, 241)
                      : const Color.fromARGB(255, 249, 133, 241),
                  // buat rounded
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // question text
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),

                    // user answer
                    Text(
                      data['user_answer'] as String,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    // correct answer
                    Text(
                      'Answer: ${data['correct_answer'] as String}',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Divider()
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
