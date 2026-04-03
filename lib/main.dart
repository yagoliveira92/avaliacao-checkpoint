import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkpoint Uninassau',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color(0xFF213366)),
      home: const LoginScreen(),
    );
  }
}