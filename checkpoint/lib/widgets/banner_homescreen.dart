
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerHomescreen extends StatelessWidget{
  const BannerHomescreen({super.key});

  @override
  Widget build(BuildContext context) {

    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Banner.png"),
          fit: .cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24,32,24,72),
        child: Column(
          spacing: 28,
          crossAxisAlignment: .center,
          children: [
            Image.asset("assets/banner-picture.png"),
            Text.rich(
              textAlign: .center,
              TextSpan(
                  text: "Hora de abraçar seu",
                  style: GoogleFonts.orbitron(
                    color: Color(0xFFFF55DF),
                    fontSize: 58,
                    fontWeight: .bold,
                  ),
                children: [
                  TextSpan(
                      text: " lado geek!",
                      style: TextStyle(
                        color: Color(0xFF8FFF24)
                      )
                  )
                ]
              ),
            ),
            SizedBox(width: 48),
            SizedBox(
              width: 268,
              height: 68,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF780BF7),
                  ),
                  child: Text(
                    "Ver as novidades!",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: .w600,
                        color: Color(0xFFFFFFFF)
                    ),
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }

}