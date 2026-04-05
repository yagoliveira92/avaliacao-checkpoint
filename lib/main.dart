import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:use_dev/constants/app_colors.dart';
import 'package:use_dev/widgets/header.dart';
import 'package:use_dev/widgets/info_section.dart';
import 'package:use_dev/widgets/product_card.dart';
import 'package:use_dev/widgets/newsletter_section.dart';

void main() {
  runApp(const App());
}

/// Widget raiz da aplicação.
/// 
/// Define o tema material da aplicação com cores customizadas
/// e gerencia a navegação entre telas.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App UseDev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.cyanAccent,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

/// Página inicial da aplicação.
/// 
/// Exibe componentes principais como header, seção de informações,
/// cards de produtos e seção de newsletter.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              const InfoSectionWidget(),
              const SizedBox(height: 40),
              Text(
                'Promos especiais',
                style: GoogleFonts.orbitron(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkNavy,
                ),
              ),
              const SizedBox(height: 20),
              const ProductCardWidget(
                imagemPath: 'assets/209382_8308_100.webp',
                titulo: 'Crocs Katchau',
                preco: '777.00',
              ),
              const SizedBox(height: 40),
              const NewsletterSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
