import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Home_Page.dart';
// Aqui virá a importação do arquivo da tela de login que vamos criar

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login',
      theme: ThemeData(primaryColor: const Color(0xFF213366)),
      home: HomePage(), // Aqui ele chama a tela que estará no outro arquivo
    );
  }
}