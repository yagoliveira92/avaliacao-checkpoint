import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppInfoWidget extends StatelessWidget {
  const AppInfoWidget({super.key});

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
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                'assets/Imagem Hero Mobile.png',
                height: 539,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Hora de\nabraçar',
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                fontSize: 55,
                fontWeight: FontWeight.w600,
                color: const Color(0xFFFF00D4),
                height: 1.1,
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.orbitron(
                  fontSize: 55,
                  fontWeight: FontWeight.w600,
                  height: 1.1,
                ),
                children: const [
                  TextSpan(
                    text: 'seu ',
                    style: TextStyle(color: Color(0xFFFF00D4)),
                  ),
                  TextSpan(
                    text: 'lado',
                    style: TextStyle(color: Color(0xFF8BFF00)),
                  ),
                ],
              ),
            ),
            Text(
              'geek!',
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                fontSize: 55,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF8BFF00),
                height: 1.1,
              ),
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7A00FF),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Ver as novidades!',
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 48),
          ],
        ),
      ],
    );
  }
}
