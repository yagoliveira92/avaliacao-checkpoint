import "package:checkpoint/widgets/banner_homescreen_widget.dart";
import "package:checkpoint/widgets/card_produce_widget.dart";
import "package:checkpoint/widgets/subscription_section_widget.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import '../data/products_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: AppBar(
            leading: Icon(Icons.menu, size: 40),
            title: Image.asset("assets/logo-usedev.png", height: 50),
            centerTitle: true,
            actions: [
              Icon(Icons.person_outline_outlined, size: 40),
              Icon(Icons.shopping_cart_outlined, size: 40),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: .stretch,
          children: [
            BannerHomescreen(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Promos Especiais",
                textAlign: .center,
                style: GoogleFonts.orbitron(fontSize: 28, fontWeight: .bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (context, index) {
                final product = products[index];

                return CardProduce(
                  nome: product["nome"]!,
                  url: product["url"]!,
                  valor: product["valor"]!,
                );
              },
            ),
            SubscriptionSectionWidget(),
          ],
        ),
      ),
    );
  }
}
