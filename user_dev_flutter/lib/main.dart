import 'package:flutter/material.dart';
import 'package:use_dev/src/Screen/incial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      home: const InitialScreen(), // 🔥 Sua tela inicial aqui!
    );
  }
}
