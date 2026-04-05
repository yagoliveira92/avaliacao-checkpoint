import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionSectionWidget extends StatelessWidget {
  const SubscriptionSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Color(0xFF8FFF24)),
      child: Padding(
        // Adicionei um padding geral para desgrudar das bordas da tela
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          children: [
            Text(
              'Inscreva-se para ganhar descontos!',
              textAlign: TextAlign.center, // Correção aqui
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold, // Correção aqui
                fontFamily: GoogleFonts.orbitron().fontFamily,
              ),
            ),
            
            const SizedBox(height: 10), // Espacinho pra respirar
            
            const Text(
              'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
              textAlign: TextAlign.center, // Correção aqui
              style: TextStyle(fontSize: 14),
            ),
            
            const SizedBox(height: 20),
            
            // TextField agora com a borda redonda do design
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Digite seu melhor endereço de email',
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.black),
                ),
              ),
            ),
            
            const SizedBox(height: 15),
            
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF780BF7),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Correção aqui
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Deixando o botão redondo!
                ),
              ),
              child: Text(
                'Inscrever',
                style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold, // Correção aqui
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}