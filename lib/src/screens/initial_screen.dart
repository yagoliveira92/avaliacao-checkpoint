import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev_uninassau/src/widgets/hero_tela.dart';
import 'package:usedev_uninassau/src/widgets/product_card_widgets.dart';
import 'package:usedev_uninassau/src/widgets/subscription_section_widgets.dart';

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
          crossAxisAlignment: CrossAxisAlignment
              .stretch, //se baseia nos filhos perpendicular a largura dos filhos

          children: [
            HeroTela(),
            Text(
              'Promos Especiais',
              textAlign: .center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.orbitron().fontFamily,
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) => ProductCardWidgets(
                nome: 'Produto 0$index',
                url: 'https://placehold.co/600x600.png',
                preco: '10$index,00',
              ),
            ), //cAI NA PROVA
            SubscriptionSectionWidgets(),
          ],
        ),
      ),
    );
  }
}
