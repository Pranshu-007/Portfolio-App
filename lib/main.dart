import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'about.dart';
import 'project.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => const MyHome(),
        'about': (context) => const MyAbout(),
        'project': (context) => const MyProject(),
      },
    );
  }
}
