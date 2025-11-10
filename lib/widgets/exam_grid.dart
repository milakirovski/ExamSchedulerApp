import 'package:exam_scheduler_app/widgets/exam_card.dart';
import 'package:flutter/material.dart';

import '../models/exam_model.dart';

class ExamGrid extends StatefulWidget {
  final List<Exam> exams;

  const ExamGrid({super.key, required this.exams});

  @override
  State<StatefulWidget> createState() => _ExamGridState();
}

class _ExamGridState extends State<ExamGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 2,
          childAspectRatio: 300/500
      ),
      itemCount: widget.exams.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ExamCard(exam: widget.exams[index],);
      },
    );
  }
}
