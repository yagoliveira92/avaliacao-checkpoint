import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionSectionWidget extends StatelessWidget {
  const SubscriptionSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // Fundo verde vibrante conforme a imagem
      color: const Color(0xFF99FF00),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
      child: Column(
        children: [
          // Título principal
          Text(
            'Inscreva-se para ganhar\ndescontos!',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.black,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 15),

          // Subtítulo
          const Text(
            'Cadastre seu email, receba novidades\ne descontos imperdíveis antes de todo\nmundo!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 30),

          // Campo de entrada de E-mail
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black, width: 2), // Borda preta
            ),
            child: const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Digite seu melhor endereço de email',
                hintStyle: TextStyle(color: Colors.black54, fontSize: 14),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Botão Inscrever
          ElevatedButton(
            onPressed: () {
              // Ação de inscrição
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF7B2FFF), // Roxo
              foregroundColor: Colors.white,
              minimumSize: const Size(180, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 0,
            ),
            child: Text(
              'Inscrever',
              style: GoogleFonts.orbitron(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
