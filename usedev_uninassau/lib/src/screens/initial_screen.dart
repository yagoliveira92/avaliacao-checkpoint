import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev_uninassau/src/widgets/banner_hero_widget.dart';
import 'package:usedev_uninassau/src/widgets/product_card_widget.dart';
import 'package:usedev_uninassau/src/widgets/subscription_section_widget.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_outlined, size: 32),
        actions: [
          Icon(Icons.person_outlined, size: 32),
          SizedBox(width: 25),
          Icon(Icons.shopping_cart_outlined, size: 32),
          SizedBox(width: 25),
        ],
        title: Image.asset('assets/logo_usedev.png', height: 40),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BannerHeroWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Text(
                    'Promos Especiais',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.orbitron(
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ProductCardWidget(
                            nome: 'Camisa Capy $index',
                            url: 'https://placehold.co/600x400/png',
                            preco: '28,00',
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SubscriptionSectionWidget(),
          ],
        ),
      ),
    );
  }
}
