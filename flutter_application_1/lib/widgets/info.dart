import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoDesconto extends StatelessWidget {
  const InfoDesconto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      color: const Color(0xFF8FFF24),
      child: Column(
        children: [
          // Título
          const SizedBox(height: 40),
          Text(
            'Inscreva-se para ganhar\ndescontos!',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF090129),
            ),
          ),

          // Descrição
          const SizedBox(height: 16),
          Text(
            'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo\nmundo!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xFF090129),
            ),
          ),

          //CAmpo de email
          const SizedBox(height: 30),
          TextField(
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            decoration: InputDecoration(
              hintText: 'Digite seu melhor endereço de email',
              hintStyle: GoogleFonts.poppins(fontSize: 14),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 38,
                vertical: 20,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: Color(0xFF090129),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: Color(0xFF090129),
                  width: 2,
                ),
              ),
            ),
          ),

          //Botão
          const SizedBox(height: 16),
          SizedBox(
            width: 190,
            height: 65,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF780BF7),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
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
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
