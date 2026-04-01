import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: double.infinity, 
            child: TextField(
              decoration: InputDecoration(
                hintText: 'o que você procura?',
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              ),
            ),
          ),
        ),
        
        // Banner Principal
        Container(
          width: double.infinity,
          height: 450, 
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Banner.png'), 
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Hero.png', 
                  height: 250,
                ),
                Text(
                  'Hora de abraçar seu',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: GoogleFonts.orbitron().fontFamily,
                    color: const Color(0xFFFF55DF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'lado geek!',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: GoogleFonts.orbitron().fontFamily,
                    color: const Color(0xFF8FFF24),
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                const SizedBox(height: 20), 
                
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF55DF),
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      'Ver novidades!',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}