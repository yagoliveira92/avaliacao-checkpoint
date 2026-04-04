import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsletterSection extends StatelessWidget {
  const NewsletterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      color: const Color(0xFF99FF33),
      child: Column(
        children: [
          Text(
            'Inscreva-se para ganhar\ndescontos!',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(
              // Fonte Orbitron
              fontSize: 22,
              fontWeight: FontWeight.bold, // Em Bold
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Cadastre seu email, receba novidades\ne descontos imperdíveis antes de todo\nmundo!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              // Fonte Poppins
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          // Campo de Email
          TextField(
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
            ), // Texto que o usuário digita em Poppins
            decoration: InputDecoration(
              hintText: 'Digite seu melhor endereço de email',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ), // Hint em Poppins
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: Color(0xFF090129),
                  width: 2,
                ), //color: const Color(0xFF090129),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: Color(0xFF090129),
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Botão Inscrever
          SizedBox(
            width: 180,
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7A00FF),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 0,
              ),
              child: Text(
                'Inscrever',
                style: GoogleFonts.poppins(
                  // Botão em Poppins
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
