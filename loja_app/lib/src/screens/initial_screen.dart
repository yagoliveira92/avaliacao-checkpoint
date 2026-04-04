import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/hero_section_widget.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/categories_section_widget.dart';
import '../widgets/banner_widget.dart';

import '../data/produtos.dart';

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
        leading: const Icon(Icons.menu, size: 40),
        title: Image.asset('assets/logo_usedev.png', height: 40),
        centerTitle: true,
        actions: const [
          Icon(Icons.person_outline, size: 40),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, size: 40),
          SizedBox(width: 25),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'O que você procura?',
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const HeroSection(),
            const SizedBox(height: 20),

            const CategoriesSection(),
            const SizedBox(height: 20),

            Text(
              'Promos Especiais',
              style: TextStyle(
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: produtos.length,
              itemBuilder: (context, index) {
                final produto = produtos[index];

                return ProductCardWidget(
                  name: produto.name,
                  price: produto.price,
                  image: produto.image,
                );
              },
            ),

            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Ver mais',
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: const Color(0xFF7800F7),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const BannerWidget(),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
