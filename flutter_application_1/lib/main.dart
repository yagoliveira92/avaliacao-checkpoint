import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_bar.dart';
import 'package:flutter_application_1/widgets/app_info.dart';
import 'package:flutter_application_1/widgets/produto.dart';
import 'package:flutter_application_1/widgets/info.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Check01-DevUser',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DevAppBar(),
              WidgetAppInfo(),
              const SizedBox(height: 24),
              Text(
                'Promos especiais',
                style: GoogleFonts.orbitron(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              WidgetProduto(
                nome: 'Camisa Capybara',
                preco: '28,00',
                imagem: 'assets/Card Produto Capy Mobile.png',
              ),
              const SizedBox(height: 24),
              InfoDesconto(),
            ],
          ),
        ),
      ),
    );
  }
}
