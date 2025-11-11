import 'package:exam_scheduler_app/data/data_initializer.dart';
import 'package:exam_scheduler_app/models/exam_model.dart';
import 'package:exam_scheduler_app/widgets/exam_grid.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late List<Exam> exams;


  @override
  void initState() {
    super.initState();
    exams = List.from(sampleExams);
  }

  @override
  Widget build(BuildContext context) {

    // sort exams by date
    final sortedExams = List<Exam>.from(exams)
      ..sort((a, b) => b.date.compareTo(a.date));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ExamGrid(exams: sortedExams),
      ),

      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Container(
          height: 50,
          alignment: Alignment.center,
          child: Chip(
            padding: const EdgeInsets.all(10),
            avatar: Icon(
              Icons.school,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: Text(
              "Вкупно испити: ${exams.length}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
