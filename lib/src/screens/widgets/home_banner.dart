import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 550, 
      color: const Color(0xFF090129), 
      child: Stack(
        children: [
         
          Image.asset(
            'assets/images/banner.png',  // imagem do fundo 
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

  
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 2.1 Imagem da Moça
                Image.asset(
                  'assets/images/hero_mobile.png', //imagem da muie lá
                  height: 280,
                  fit: BoxFit.contain,
                ),
                
                const SizedBox(height: 20),

                
                Padding( // Texto "Hora de abraçar seu lado geek!"
                  padding: const EdgeInsets.symmetric(horizontal: 20), 
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.orbitron(
                        fontSize: 28, 
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Hora de abraçar seu\n', 
                          style: TextStyle(color: Color(0xFFFF55DF)), 
                        ),
                        const TextSpan(
                          text: 'lado geek!',
                          style: TextStyle(color: Color(0xFF8FFF24)), 
                        ),
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(height: 25),

                
                ElevatedButton( // Botão "ver a novidades"
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF780BF7), 
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), 
                    ),
                  ),
                  child: Text(
                    'Ver as novidades!',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}