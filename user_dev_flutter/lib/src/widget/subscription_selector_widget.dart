import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscripitionSelectorWidget extends StatelessWidget {
  const SubscripitionSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF8FFF24),
      padding: const EdgeInsets.all(24),
      child: Column(
        spacing: 20,
        children: [
          Text(
            'Inscreva-se para ganhar  descontos!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: .bold,
              fontSize: 18,
              fontFamily: GoogleFonts.orbitron().fontFamily,
            ),
          ),
          Text(
            'Casdastre seu e-mail, receba novidades e descontos importantes antes de todo mundo!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: GoogleFonts.orbitron().fontFamily,
              fontSize: 18,
            ),
          ),
          TextField(
            keyboardType: .emailAddress,
            decoration: InputDecoration(
              hintText: 'Digite seu melhor endereço do email',
              filled: true,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Color(0xFFDDDDDD)),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF780BF7),
              ),
              child: Text(
                'increver',
                style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
