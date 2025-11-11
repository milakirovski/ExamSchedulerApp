import 'package:exam_scheduler_app/screens/details.dart';
import 'package:exam_scheduler_app/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Распоред за испити - 223182',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: Colors.grey[800],
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(title: 'Pаспоред за испити - 223182'),
        "/details": (context) => const DetailsPage(),
      },
    );
  }
}