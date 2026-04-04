import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar apenas para demonstrar navegação
      appBar: AppBar(
        title: const Text('Home - Acervo'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo ao Acervo! 🚀',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}