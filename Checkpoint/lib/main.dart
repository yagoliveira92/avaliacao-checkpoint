import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_dius/widgets/Appbar.dart';
import 'package:teste_dius/widgets/appinfo.dart';
import 'package:teste_dius/widgets/produto.dart';
import 'package:teste_dius/widgets/newsletter.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckPoint',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(108, 0, 247, 255),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              OnlineWidget(),
              AppInfoWidget(),
              Text(
                'Promoções Especiais',
                style: GoogleFonts.orbitron(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF090129),
                ),
              ),
              produto_Widget(
                imagemPath: 'assets/Card Produto Capy Mobile.png',
                titulo: 'Feijão com farinha',
                preco: '67,00',
              ),
              NewsletterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
