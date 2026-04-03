import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/hero_section_widget.dart';
class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo_usedev.png',
          height: 40,
        ),
        actions: const [
          Icon(Icons.person_outline, size: 40,),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, size: 40,),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeroSectionWidget(),
            Text(
              'Promos Especiais',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.orbitron().fontFamily,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) => [
                const ProductCardWidget(
                  name: 'Action Figure Thanos',
                  url: 'https://placehold.co/600x600.png',
                  preco: '150,00',
                ),
                const ProductCardWidget(
                  name: 'Camiseta Gamer',
                  url: 'https://placehold.co/600x600.png',
                  preco: '89,90',
                ),
                const ProductCardWidget(
                  name: 'Mousepad Geek',
                  url: 'https://placehold.co/600x600.png',
                  preco: '49,90',
                ),
                const ProductCardWidget(
                  name: 'Caneca Dev',
                  url: 'https://placehold.co/600x600.png',
                  preco: '39,90',
                ),
                const ProductCardWidget(
                  name: 'Boné Nerd',
                  url: 'https://placehold.co/600x600.png',
                  preco: '59,90',
                ),
                const ProductCardWidget(
                  name: 'Mochila Hacker',
                  url: 'https://placehold.co/600x600.png',
                  preco: '129,90',
                ),
              ][index],
            ),
          ],
        ),
      ),
    );
  }
}