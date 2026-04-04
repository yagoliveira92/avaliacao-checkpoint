import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetAppInfo extends StatelessWidget {
  const WidgetAppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          'assets/Banner.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //imagem garota
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Image.asset(
                'assets/Imagem Hero Mobile.png',
                width: double.infinity,
                height: 500,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 30),
            //texto part1
            Text(
              'Hora de\nabraçar',
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFF55DF),
                height: 1.3,
              ),
            ),

            //texto part2
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.orbitron(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
                children: const [
                  TextSpan(
                    text: 'seu ',
                    style: TextStyle(color: Color(0xFFFF55DF)),
                  ),
                  TextSpan(
                    text: 'lado \ngeek!',
                    style: TextStyle(color: Color(0xFF8FFF24)),
                  ),
                ],
              ),
            ),

            //botão
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7A00FF),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Ver as novidades!',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ],
    );
  }
}
