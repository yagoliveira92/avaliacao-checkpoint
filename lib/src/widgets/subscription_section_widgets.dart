import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionSectionWidgets extends StatelessWidget {
  const SubscriptionSectionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(color: Color(0xFF8FFF24)),

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Inscreva-se para ganhar\n descontos!',
                textAlign: .center,
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: .bold),
                //  TextStyle(
                //   fontSize: 18,
                //   fontWeight: FontWeight.bold,
                //   fontStyle: GoogleFonts.poppins,
                // ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(1.0),

                child: Text(
                  'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
                  textAlign: .center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                keyboardType: .emailAddress,
                decoration: InputDecoration(
                  hintText: 'Digite seu melhor endereço de email',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF780BF7),
                  padding: .symmetric(horizontal: 20, vertical: 15),
                ),
                child: Text(
                  'Inscrever',
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
