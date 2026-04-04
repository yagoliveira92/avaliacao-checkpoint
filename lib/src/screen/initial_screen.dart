import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/hero_section_widget.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/subscription_Section_widget.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 40.0),
        title: Image.asset('assets/Logo.png', height: 40),
        centerTitle: true,
        actions: [
          Icon(Icons.person_outline, size: 40.0),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, size: 40.0),
          SizedBox(width: 25),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeroSectionWidget(), // banner com imagem e texto colorido
            SizedBox(height: 20),
            Text(
              'Promos Especiais',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontSize: 31,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) => ProductCardWidgets(
                  nome: 'Produto 0$index',
                  url: 'https://placehold.co/600x600.png',
                  preco: '10$index,00',
                ),
            ),
            SizedBox(height: 20),
            MyWidget()
          ],
        ),
      ),
    );
  }
}
