import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: data['isCorrectAnswer'].toString() == 'true'
                            ? const Color.fromARGB(255, 117, 190, 246)
                            : const Color.fromARGB(255, 255, 104, 247),
                        shape: BoxShape.circle),
                    child: Text(
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w700),
                      ((data['questions_index'] as int) + 1).toString(),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 255, 222, 255),
                                fontWeight: FontWeight.bold,
                              ),
                              data['question'] as String),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              style: const TextStyle(
                                color: Color.fromARGB(255, 137, 60, 199),
                              ),
                              data['user_answer'] as String),
                          Text(
                              style: const TextStyle(
                                color: Color.fromARGB(255, 200, 167, 255),
                              ),
                              data['correct_answer'] as String),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
