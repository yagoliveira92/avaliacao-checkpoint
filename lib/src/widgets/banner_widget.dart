import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerWidget extends StatelessWidget{
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return 
      Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF8FFF24),

              child: Column(
                children: [
                   Text(
                    'Inscreva-se para ganhar descontos!',
                    style: TextStyle(
                      fontFamily: GoogleFonts.orbitron().fontFamily,
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: .bold,
                    ),
                    textAlign: .center,
                  ),
                  const SizedBox(height: 15),

                   Text(
                    'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Digite seu melhor endereço de email',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black,                                  
                      ),
                      filled: true,
                      fillColor: Color(0xFF8FFF24),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6A00FF),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child:  Text(
                      'Inscrever',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,                 
                      fontWeight: .bold,
                    ),
                    ),
                    ),
                ],
              ),
            );
  }
}
