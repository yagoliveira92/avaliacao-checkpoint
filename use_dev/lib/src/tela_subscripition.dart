import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Color(0xFF8FFF24)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          children: [
            Text(
              'Inscreva-se para ganhar descontos!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: .bold,
                fontSize: 18,
                fontFamily: GoogleFonts.orbitron().fontFamily,
              ),
            ),
            Text(
              'Cadastre seu email para receber nossas promoções e descontos exclusivos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontSize:18,
              ),
            ),
            TextField(
              keyboardType: .emailAddress,
              decoration: InputDecoration(
                hintText: 'Digite seu melhor email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color(0xff000000),
                )),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF430091),
                padding: .symmetric(horizontal: 30, vertical: 25),
              ),
              child: Text('Inscrever'
              , style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontSize: 25,
                color: Colors.white,
                fontWeight: .bold,
              )),
              
            ),
          ],
        ),
      ),
    );
  }
}
