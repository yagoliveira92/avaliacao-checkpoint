import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroTela extends StatelessWidget {
  const HeroTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Banner.png'),
              fit: .cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: .start,
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/famboy.png',
                width: MediaQuery.of(context).size.width * 0.9,
                fit: .cover,
              ),

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hora de\n abraçar seu',
                        style: GoogleFonts.orbitron(
                          fontSize: 28,
                          color: Colors.purpleAccent,
                          fontWeight: .bold,
                        ),
                      ),
                      TextSpan(
                        text: '\nlado geek',
                        style: GoogleFonts.orbitron(
                          fontSize: 28,
                          color: Colors.lightGreen,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),
                  textAlign: .center,
                ),
              ),
              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  backgroundColor: Color(0xFF780BF7),
                ),
                child: Text(
                  'Ver as novidades!',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
