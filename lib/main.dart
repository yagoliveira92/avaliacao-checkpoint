// Autor: André Lucas Conceição Magalhães
// GitHub: https://github.com/NemRela1
// LinkedIn: https://www.linkedin.com/in/lucas-magalh%C3%A3es-348936222/
// Data: 20/03/2026

import 'package:app/pages/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const HomePage(),
    );
  }
}
