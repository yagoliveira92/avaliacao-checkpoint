import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnrollmentPage extends StatelessWidget {
  const EnrollmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orbFont = GoogleFonts.orbitron().fontFamily;
    return Container(
      width: double.infinity,
      color: const Color(0xff8fff24),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Inscreva-se para ganhar descontos!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              fontFamily: orbFont,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Cadastre seu email para receber nossas promoções e descontos exclusivos',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              hintText: 'Digite seu melhor email',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff430091),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            ),
            child: Text(
              'Inscrever',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
