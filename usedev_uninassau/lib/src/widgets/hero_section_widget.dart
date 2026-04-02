import 'package:flutter/material.dart';



class HeroSectionWidget extends StatelessWidget {
  const HeroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox (
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/banner_cta.png'),
          fit: .cover,
        ),
      ),
      child: Column(
        spacing: 20,
        crossAxisAlignment: .center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset('assets/hero_cta.png', width: 300),
          ),
          Text.rich(
            textAlign: .center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 50,
              fontWeight: .bold,
            ),
            TextSpan(
              text: 'Hora de abraçar seu ',
              style: TextStyle(color: Color(0xFFFF55DF)),
              children: [
                TextSpan(
                  text: 'lado geek!',
                  style: TextStyle(color: Color(0xFF8FFF24)),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF780BF7),
              padding: .symmetric(horizontal: 30, vertical: 25),
            ),
            child: Text(
              'Ver as Novidades',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: Colors.white,
                fontWeight: .bold,
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}