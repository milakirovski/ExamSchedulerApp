import 'package:flutter/material.dart';
import '../models/exam_model.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  const ExamCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final bool isPassed = exam.date.isBefore(DateTime.now());

    final Color cardBackgroundColor = isPassed
        ? Colors.white70
        : Theme.of(context).cardColor;

    final Color borderColor = isPassed
        ? Colors.grey
        : Theme.of(context).colorScheme.primaryFixedDim;

    final Color textColor = isPassed
        ? Colors.grey.shade600
        : Theme.of(
            context,
          ).colorScheme.onSurface;

    final Color iconColor = isPassed
        ? Colors.grey
        : Theme.of(context).colorScheme.onSurface;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: exam);
      },
      child: Card(
        color: cardBackgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 4, color: borderColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Align all text to the left
            children: [
              // Text(exam.course, style: TextStyle(fontSize: 20),),
              Text(
                exam.course,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              Divider(height: 20, thickness: 1),

              // Text("Датум на полагање: ${exam.date.day.toString()}.${exam.date.month.toString()}.${exam.date.year.toString()}", style: TextStyle(fontSize: 15)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month, color: iconColor, size: 20),
                  const SizedBox(width: 12),
                  // Expanded ensures text wraps nicely if it's too long
                  Expanded(
                    child: Text(
                      "Датум на полагање: ${exam.date.day.toString().padLeft(2, '0')}.${exam.date.month.toString().padLeft(2, '0')}.${exam.date.year} ",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: textColor),
                    ),
                  ),
                ],
              ),
              // Text("Време: ${exam.date.hour}:${exam.date.minute}", style: TextStyle(fontSize: 15)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.access_time, color: iconColor, size: 20),
                  const SizedBox(width: 12),
                  // Expanded ensures text wraps nicely if it's too long
                  Expanded(
                    child: Text(
                      "Време: ${exam.date.hour}:${exam.date.minute}",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: textColor),
                    ),
                  ),
                ],
              ),
              // Text("Простории: \n${exam.rooms.join('\n ')}"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on, color: iconColor, size: 20),
                  const SizedBox(width: 12),
                  // Expanded ensures text wraps nicely if it's too long
                  Expanded(
                    child: Text(
                      "Простории: \n- ${exam.rooms.join('\n- ')}",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: textColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
