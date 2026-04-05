import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSectionWidget extends StatelessWidget {
  const HeroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      decoration: const BoxDecoration(
        color: Color(0xFF0D0221), 
        image: DecorationImage(
          image: AssetImage('assets/Banner.png'), 
          fit: BoxFit.cover, // Cobre todo o espaço sem achatar
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 25), // Espacinho no topo

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Image.asset(
              'assets/famboy.png',
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 20 ), 

          
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              children: const [
                TextSpan(text: 'Hora de\n', style: TextStyle(color: Color(0xFFFF55DF))),
                TextSpan(text: 'abraçar\n', style: TextStyle(color: Color(0xFFFF55DF))),
                TextSpan(text: 'seu ', style: TextStyle(color: Color(0xFFFF55DF))),
                TextSpan(text: 'lado\n', style: TextStyle(color: Color(0xFF8FFF24))),
                TextSpan(text: 'geek!', style: TextStyle(color: Color(0xFF8FFF24))),
              ],
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 30), 

          
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              backgroundColor: const Color(0xFF780BF7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Text(
              'Ver as novidades!',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 50), 
        ],
      ),
    );
  }
}