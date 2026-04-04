import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSectionWidget extends StatelessWidget {
  const HeroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Banner.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/famboy.png',
              width: 200,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Hora de abraçar seu ',
                  style: TextStyle(
                    fontFamily: GoogleFonts.orbitron().fontFamily,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent,
                  ),
                ),
                TextSpan(
                  text: 'lado geek',
                  style: TextStyle(
                    fontFamily: GoogleFonts.orbitron().fontFamily,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen,
                  ),
                ),
              ],
            ),
            textAlign: .center,
          ),
          const SizedBox(height: 20), // espaçamento entre texto e botão
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              backgroundColor: const Color.fromRGBO(120, 11, 247, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Ver as novidades!',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
