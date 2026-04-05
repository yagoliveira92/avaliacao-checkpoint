import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const GrrImportsApp());
}

class GrrImportsApp extends StatelessWidget {
  const GrrImportsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRR Imports',
      debugShowCheckedModeBanner: false, // tirei o banner de debug
      theme: ThemeData(
        primaryColor: const Color(0xFF6B4EFF),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

//vamo ver se essa bomba roda não aguento mais