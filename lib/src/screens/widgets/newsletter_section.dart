import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsletterSection extends StatelessWidget {
  const NewsletterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( // essa aqui vai ser a parte daquele "letreiro" verde
      color: const Color(0xFF8FFF24), 
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        children: [
          Text(  //primeiro texto que fica em cima
            'Inscreva-se para ganhar descontos!',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF090129),
            ),
          ),
          const SizedBox(height: 10),
          Text(  // segundo texto logo abaixo
            'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xFF090129)),
          ),
          const SizedBox(height: 20),
          
          TextField( // campo do email
            decoration: InputDecoration(
              hintText: 'Digite seu melhor endereço de email',
              hintStyle: const TextStyle(fontSize: 12),
              filled: true,
              fillColor: Colors.white.withValues(alpha: 0.5), //isso aqui deixa o fundo branquinho e meio transparente
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Color(0xFF090129)),
              ),
            ),
          ),
          const SizedBox(height: 15),
          
          ElevatedButton( //botao pra se inscrever 
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF780BF7), // Roxo
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: const Text('Inscrever', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}