import 'package:exam_scheduler_app/widgets/details_data.dart';
import 'package:flutter/material.dart';
import '../models/exam_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {

    final exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Информации за испитот по ${exam.course}"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            DetailData(id: exam.id, course: exam.course, date: exam.date, rooms: exam.rooms)
          ],
        ),
      ),
    );
  }
}
