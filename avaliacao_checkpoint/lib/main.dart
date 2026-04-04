import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avaliacao_checkpoint/widgets/Appbar.dart';
import 'package:avaliacao_checkpoint/widgets/appinfo.dart';
import 'package:avaliacao_checkpoint/widgets/fazedordeproduto.dart';
import 'package:avaliacao_checkpoint/widgets/newsletter.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App foda',
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
              AppBarWidget(),
              AppInfoWidget(),
              Text(
                'Promos especiais',
                style: GoogleFonts.orbitron(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF090129),
                ),
              ),
              ProdutoWidget(
                imagemPath: 'assets/Card Produto Capy Mobile.png',
                titulo: 'Camiseta Capy',
                preco: '28,00',
              ),
              ProdutoWidget(
                imagemPath: 'assets/mousepad cafe.png',
                titulo: 'Mousepad café',
                preco: '18,00',
              ),
              ProdutoWidget(
                imagemPath: 'assets/caneca bug.png',
                titulo: 'Caneca Bug',
                preco: '28,00',
              ),
              ProdutoWidget(
                imagemPath: 'assets/bone 404.png',
                titulo: 'Boné 404',
                preco: '25,00',
              ),
              ProdutoWidget(
                imagemPath: 'assets/quadrowhile.png',
                titulo: 'Quadro While',
                preco: '22,00',
              ),
              ProdutoWidget(
                imagemPath: 'assets/copodev.png',
                titulo: 'Copo Vida de Dev',
                preco: '28,00',
              ),
              ProdutoWidget(
                imagemPath: 'assets/abridorgarrafa.png',
                titulo: 'Abridor de garrafa',
                preco: '12,00',
              ),
              ProdutoWidget(
                imagemPath: 'assets/camisetaestagios.png',
                titulo: 'Camiseta Estágios',
                preco: '35,00',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Text(
                  'Ver mais',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF7A00E6),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xFF7A00E6),
                    decorationThickness: 1.5,
                  ),
                ),
              ),
              NewsletterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
