import '../models/exam_model.dart';

List<Exam> sampleExams = [
  Exam(
    id: 1,
    course: "Мобилни и Информациски системи",
    date: DateTime(2025, 12, 15, 10, 0), // Future exam
    rooms: ["Лаб 1", "Лаб 2"],
  ),
  Exam(
    id: 2,
    course: "Веб Програмирање",
    date: DateTime(2025, 11, 5, 13, 30), // Past exam (Current date is Nov 10)
    rooms: ["Амфитеатар 1"],
  ),
  Exam(
    id: 3,
    course: "Бази на Податоци",
    date: DateTime(2026, 1, 20, 9, 0), // Future exam
    rooms: ["Лаб 3", "218"],
  ),
  Exam(
    id: 4,
    course: "Алгоритми и Податочни струткури",
    date: DateTime(2025, 10, 28, 16, 0), // Past exam
    rooms: ["111", "112", "113"],
  ),
  Exam(
    id: 5,
    course: "Софтверско Инженерство",
    date: DateTime(2025, 12, 17, 12, 0), // Future exam
    rooms: ["Онлајн"],
  ),
  Exam(
    id: 6,
    course: "Компјутерски Мрежи и Безбедност",
    date: DateTime(2026, 1, 22, 15, 0), // Future exam
    rooms: ["220"],
  ),
  Exam(
    id: 7,
    course: "Оперативни Системи",
    date: DateTime(2025, 11, 8, 11, 0), // Past exam
    rooms: ["Амфитеатар 2"],
  ),
  Exam(
    id: 8,
    course: "Вовед во Наука за Податоци",
    date: DateTime(2026, 2, 2, 14, 0), // Future exam
    rooms: ["Лаб 5", "Лаб 6"],
  ),
  Exam(
    id: 9,
    course: "Сервисно Ориентирани Архитектури",
    date: DateTime(2025, 12, 1, 10, 0), // Future exam
    rooms: ["Голем Амфитеатар"],
  ),
  Exam(
    id: 10,
    course: "Електронска и Мобилна Трговија",
    date: DateTime(2025, 9, 15, 9, 0), // Past exam
    rooms: ["Библиотека"],
  ),
  Exam(
    id: 11,
    course: "Дизајн на Интеракција Човек-Компјутер",
    date: DateTime(2026, 1, 29, 17, 0), // Future exam
    rooms: ["215", "216"],
  ),
  Exam(
    id: 12,
    course: "Математика 1",
    date: DateTime(2025, 12, 22, 12, 0), // Future exam
    rooms: ["117", "119"],
  ),
  Exam(
    id: 12,
    course: "Калкулус",
    date: DateTime(2025, 12, 22, 12, 0), // Future exam
    rooms: ["117", "119"],
  ),
  Exam(
    id: 12,
    course: "Дискретна Математика",
    date: DateTime(2025, 12, 22, 12, 0), // Future exam
    rooms: ["117", "119"],
  ),
];