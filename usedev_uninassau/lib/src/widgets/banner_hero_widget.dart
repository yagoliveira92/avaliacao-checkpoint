import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerHeroWidget extends StatelessWidget {
  const BannerHeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/banner_cta.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox(
        height: 1200, // tamanho fixo para testar ajuste para outras telas
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/hero_image.png', //ajuste da imagem em outras telas
              height: 650,
            ),
            SizedBox(height: 50),
            Text.rich(
              TextSpan(
                style: GoogleFonts.orbitron(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Hora de abraçar seu ',
                    style: TextStyle(color: Color(0xFFFF55DF)),
                  ),
                  TextSpan(
                    text: 'lado geek!',
                    style: TextStyle(color: Color(0xFF8FFF24)),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF780BF7),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text(
                'Ver as novidades!',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
