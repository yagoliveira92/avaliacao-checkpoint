import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Banner Principal
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/banner.png'),
              fit: BoxFit.cover
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/camisaInicial.png',
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                Text(
                  'Hora de abraçar seu',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: GoogleFonts.orbitron().fontFamily,
                    color: const Color(0xFFFF55DF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'lado geek!',
                  style: TextStyle(
                    fontSize: 26,
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
                      backgroundColor: const Color.fromARGB(255, 106, 63, 207),
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      'Ver as novidades!',
                      style: TextStyle(
                        fontSize: 16,
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
        // PROMOS
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Promos especiais',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: GoogleFonts.orbitron().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

