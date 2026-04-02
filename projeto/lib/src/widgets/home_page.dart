import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'primary_page.dart';
import 'enrollment_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _barradeInformacoes(),
              // Banner maior: imagem como fundo, imagem hero em cima, frase abaixo da imagem e botão abaixo da frase
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Banner.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/Hero.png',
                          width: MediaQuery.of(context).size.width * 0.85,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Hora de\nabraçar\nseu ',
                                style: GoogleFonts.orbitron(
                                  fontSize: MediaQuery.of(context).size.width < 600 ? 30 : 32,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1,
                                  color: const Color(0xFFFF55DF),
                                ),
                              ),
                              TextSpan(
                                text: 'lado geek!',
                                style: GoogleFonts.orbitron(
                                  fontSize: MediaQuery.of(context).size.width < 600 ? 30 : 32,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1,
                                  color: const Color(0xFF8FFF24),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(const Color(0xFF7A00FF)),
                              elevation: MaterialStateProperty.all(0),
                              shadowColor: MaterialStateProperty.all(Colors.transparent),
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                              ),
                              minimumSize: MaterialStateProperty.all(Size(double.infinity, 55)),
                              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 24)),
                            ),
                            child: Text(
                              'Ver as novidades!',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              PrimaryPage(),
              const EnrollmentPage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _barradeInformacoes() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/image.png', height: 35, fit: BoxFit.contain),
              const Spacer(),
              const Text(
                'Sobre nós',
                style: TextStyle(color: Color(0xFF333333), fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(width: 15),
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFF1E1E2C)),
              ),
              const SizedBox(width: 5),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outline, size: 24, color: Color(0xFF1E1E2C)),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined, size: 24, color: Color(0xFF1E1E2C)),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          const SizedBox(height: 20),

          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'O que você procura?',
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                      isDense: true,
                    ),
                  ),
                ),
                Icon(Icons.search, color: Colors.black54, size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}