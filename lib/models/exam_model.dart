class Exam {
  int id;
  String course;
  DateTime date;
  List<String> rooms;

  Exam({required this.id, required this.course, required this.date, required this.rooms});

  // Exam.fromJson(Map<String, dynamic> data)
  // : id = data['id'],
  // course = data['course'],
  // date = data['date'],
  // rooms = data['rooms'];
  //
  // Map<String, dynamic> toJson() => {'id': id, 'course': course, 'date': date, 'rooms': rooms};

}
