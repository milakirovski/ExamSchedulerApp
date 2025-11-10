import '../models/exam_model.dart';

List<Exam> sampleExams = [
  Exam(
    id: "F18L3W128",
    course: "Мобилни и Информациски системи",
    date: DateTime(2025, 12, 15, 10, 0), // Future exam
    rooms: ["Лаб 1", "Лаб 2"],
  ),
  Exam(
    id: "F18L3W024",
    course: "Веб Програмирање",
    date: DateTime(2025, 11, 5, 13, 30), // Past exam (Current date is Nov 10)
    rooms: ["Амфитеатар 1"],
  ),
  Exam(
    id: "F18L3W004",
    course: "Бази на Податоци",
    date: DateTime(2026, 1, 20, 9, 0), // Future exam
    rooms: ["Лаб 3", "218"],
  ),
  Exam(
    id: "F18L2W001",
    course: "Алгоритми и Податочни струткури",
    date: DateTime(2025, 10, 28, 16, 0), // Past exam
    rooms: ["111", "112", "113"],
  ),
  Exam(
    id: "F18L2S029",
    course: "Софтверско Инженерство",
    date: DateTime(2025, 12, 17, 12, 0), // Future exam
    rooms: ["Онлајн"],
  ),
  Exam(
    id: "F18L2W014",
    course: "Компјутерски Мрежи и Безбедност",
    date: DateTime(2026, 1, 22, 15, 0), // Future exam
    rooms: ["220"],
  ),
  Exam(
    id: "F18L2S017",
    course: "Оперативни Системи",
    date: DateTime(2025, 11, 8, 11, 0), // Past exam
    rooms: ["Амфитеатар 2"],
  ),
  Exam(
    id: "F18L3W008",
    course: "Вовед во Наука за Податоци",
    date: DateTime(2026, 2, 2, 14, 0), // Future exam
    rooms: ["Лаб 5", "Лаб 6"],
  ),
  Exam(
    id: "F18L3S155",
    course: "Сервисно Ориентирани Архитектури",
    date: DateTime(2025, 12, 1, 10, 0), // Future exam
    rooms: ["Голем Амфитеатар"],
  ),
  Exam(
    id: "F18L3S025",
    course: "Електронска и Мобилна Трговија",
    date: DateTime(2025, 9, 15, 9, 0), // Past exam
    rooms: ["Библиотека"],
  ),
  Exam(
    id: "F18L3S010",
    course: "Дизајн на Интеракција Човек-Компјутер",
    date: DateTime(2026, 1, 29, 17, 0), // Future exam
    rooms: ["215", "216"],
  ),
  Exam(
    id: "F18L1W033",
    course: "Калкулус 1",
    date: DateTime(2025, 12, 22, 12, 0), // Future exam
    rooms: ["117", "119"],
  ),
  Exam(
    id: "F18L1S034",
    course: "Калкулус 2",
    date: DateTime(2025, 12, 22, 12, 0), // Future exam
    rooms: ["117", "119"],
  ),
  Exam(
    id: "F18L1W011",
    course: "Дискретна Математика",
    date: DateTime(2025, 12, 22, 12, 0), // Future exam
    rooms: ["117", "119"],
  ),
];