import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:use_dev/src/product_card_widget.dart';
import 'package:use_dev/src/subscripition_selector_widget.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0018),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
        title: Image.asset("assets/LogoUseDev.png", height: 26),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outlined,
              size: 32,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 32,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "O que você procura?",
                hintStyle: const TextStyle(color: Colors.black54),
                suffixIcon: const Icon(Icons.search, color: Colors.black87),
                filled: true,
                fillColor: const Color(0xFFF1F1F1),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // -------------------------
            // BANNER COMPLETO
            // -------------------------
            SizedBox(
              child: Stack(
                children: [
                  // Imagem de fundo se adapta ao conteúdo
                  Positioned.fill(
                    child: Image.asset(
                      'assets/Banner.png',
                      width: 400,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Conteúdo sem altura fixa
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/HeroMobile.png',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),

                        const SizedBox(height: 16),

                        Text(
                          "Hora de abraçar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEA35FF),
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontFamily: GoogleFonts.orbitron().fontFamily,
                          ),
                        ),
                        Text(
                          "seu lado",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEA35FF),
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontFamily: GoogleFonts.orbitron().fontFamily,
                          ),
                        ),
                        Text(
                          "geek!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF53FF45),
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontFamily: GoogleFonts.orbitron().fontFamily,
                          ),
                        ),

                        const SizedBox(height: 24),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF8A2BFF),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Ver as novidades!",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
            const ProductCardWidget(
              url: 'https://placehold.co/600x400/png',
              titulo: 'Produto 1',
              preco: 'R\$ 99,90',
            ),
            const SubscripitionSelectorWidget(),
          ],
        ),
      ),
    );
  }
}
